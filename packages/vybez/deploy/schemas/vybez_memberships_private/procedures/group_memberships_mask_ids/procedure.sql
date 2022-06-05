-- Deploy: schemas/vybez_memberships_private/procedures/group_memberships_mask_ids/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

CREATE FUNCTION "vybez_memberships_private".group_memberships_mask_ids (mask bit varying)
  RETURNS uuid[]
AS $CODEZ$
    SELECT array_agg(m.entity_id) FROM "vybez_memberships_public".group_memberships m
        WHERE m.permissions & mask = mask
        AND m.actor_id = jwt_public.current_user_id()
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_memberships_private".group_memberships_mask_ids TO authenticated;
COMMIT;
