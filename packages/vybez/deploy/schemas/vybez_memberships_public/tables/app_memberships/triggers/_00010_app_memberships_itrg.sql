-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/triggers/_00010_app_memberships_itrg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_memberships_private/trigger_fns/app_memberships_itg

BEGIN;
CREATE TRIGGER _00010_app_memberships_itrg 
 BEFORE INSERT ON "vybez_memberships_public".app_memberships 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".app_memberships_itg ( );
COMMIT;
