-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/triggers/_99999_app_memberships_banned_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_roles_private/trigger_fns/app_memberships_banned_tg

BEGIN;
CREATE TRIGGER _99999_app_memberships_banned_trg 
 AFTER UPDATE ON "vybez_memberships_public".app_memberships 
 FOR EACH ROW 
 WHEN ((OLD.is_disabled IS DISTINCT FROM NEW.is_disabled OR OLD.is_banned IS DISTINCT FROM NEW.is_banned) AND (NEW.is_disabled IS TRUE OR NEW.is_banned IS TRUE)) 
 EXECUTE PROCEDURE "vybez_roles_private".app_memberships_banned_tg ( );
COMMIT;
