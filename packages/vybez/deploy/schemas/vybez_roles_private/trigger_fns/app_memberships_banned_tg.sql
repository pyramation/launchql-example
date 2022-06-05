-- Deploy: schemas/vybez_roles_private/trigger_fns/app_memberships_banned_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema

BEGIN;

CREATE FUNCTION "vybez_roles_private".app_memberships_banned_tg ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    DELETE FROM "vybez_roles_private".api_tokens 
        WHERE user_id = NEW.actor_id;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
COMMIT;
