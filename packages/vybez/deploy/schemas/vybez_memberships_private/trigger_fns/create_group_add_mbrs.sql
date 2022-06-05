-- Deploy: schemas/vybez_memberships_private/trigger_fns/create_group_add_mbrs to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table
-- requires: schemas/vybez_permissions_public/procedures/group_member_permissions_get_mask_by_names/procedure

BEGIN;

CREATE FUNCTION "vybez_memberships_private".create_group_add_mbrs ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    first_owner uuid = jwt_public.current_user_id();
    uid uuid;
    create_groups_cascade_members boolean;
BEGIN
    SELECT 
        owd.create_groups_cascade_members
    FROM "vybez_memberships_public".membership_defaults owd 
        WHERE owd.entity_id = NEW.id
    INTO create_groups_cascade_members;
    IF (NOT FOUND) THEN 
        create_groups_cascade_members = FALSE;
    END IF;
    INSERT INTO "vybez_memberships_public".group_membership_defaults
    ( is_approved, entity_id  )
    VALUES ( TRUE, NEW.id );
    INSERT INTO "vybez_permissions_public".group_member_permission_defaults 
        (permissions, entity_id)
    VALUES 
    (
        "vybez_permissions_public".group_member_permissions_get_mask_by_names(
            ARRAY['invites_approved', 'create_invites']::citext[]
        ),
        NEW.id
    );
    FOR uid in
        SELECT m.actor_id FROM 
            "vybez_memberships_public".memberships m
        WHERE m.entity_id = NEW.owner_id
        AND m.is_admin IS TRUE
    LOOP 
        IF (first_owner = uid) THEN 
            CONTINUE;
        END IF;
        INSERT INTO 
            "vybez_memberships_public".group_memberships
        (actor_id, entity_id, is_admin) VALUES 
        (uid, NEW.id, TRUE);
    END LOOP;
    IF (create_groups_cascade_members IS TRUE) THEN 
        FOR uid in
            SELECT m.actor_id FROM 
                "vybez_memberships_public".memberships m
            WHERE m.entity_id = NEW.owner_id
            AND m.is_admin IS FALSE
        LOOP 
            IF (first_owner = uid) THEN 
                CONTINUE;
            END IF;
            INSERT INTO 
                "vybez_memberships_public".group_memberships
            (actor_id, entity_id) VALUES 
            (uid, NEW.id);
        END LOOP;
    END IF;
    IF (first_owner IS NOT NULL) THEN 
        INSERT INTO 
            "vybez_memberships_public".group_memberships
            (actor_id, entity_id, is_owner) VALUES 
            (first_owner, NEW.id, TRUE);
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
