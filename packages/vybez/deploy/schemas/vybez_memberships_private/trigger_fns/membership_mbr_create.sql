-- Deploy: schemas/vybez_memberships_private/trigger_fns/membership_mbr_create to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/table
-- requires: schemas/vybez_permissions_public/procedures/membership_permissions_get_mask_by_names/procedure

BEGIN;

CREATE FUNCTION "vybez_memberships_private".membership_mbr_create ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
    owner_id uuid = jwt_public.current_user_id();
BEGIN
    IF (NEW.type = 0) THEN 
        INSERT INTO "vybez_memberships_public".memberships
        ( is_owner, actor_id, entity_id  )
        VALUES ( TRUE, NEW.id, NEW.id );
    ELSEIF (owner_id IS NOT NULL) THEN 
        INSERT INTO "vybez_memberships_public".memberships
        ( is_owner, actor_id, entity_id  )
        VALUES ( TRUE, owner_id, NEW.id );
        INSERT INTO "vybez_memberships_public".membership_defaults
        ( entity_id  ) -- is_approved, etc., defaults from table itself
        VALUES ( NEW.id );
        INSERT INTO "vybez_permissions_public".membership_permission_defaults 
            (permissions, entity_id)
        VALUES 
        (
            "vybez_permissions_public".membership_permissions_get_mask_by_names(
                ARRAY['invites_approved', 'create_invites']::citext[]
            ),
            NEW.id
        );
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
