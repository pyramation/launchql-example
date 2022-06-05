-- Deploy: schemas/vybez_memberships_private/procedures/app_memberships_mask_check/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema

BEGIN;

CREATE FUNCTION "vybez_memberships_private".app_memberships_mask_check (mask bit varying, actor_id uuid DEFAULT jwt_public.current_user_id())
  RETURNS boolean
AS $CODEZ$
    SELECT EXISTS (
        SELECT 1 FROM "vybez_memberships_public".app_memberships m
            WHERE m.permissions & mask = mask
            AND m.actor_id = app_memberships_mask_check.actor_id
    );
$CODEZ$
LANGUAGE sql STABLE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_memberships_private".app_memberships_mask_check TO authenticated;
COMMIT;
