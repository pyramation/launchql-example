-- Deploy: schemas/vybez_memberships_public/tables/app_grants/triggers/app_grants_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/app_grants/table
-- requires: schemas/vybez_memberships_private/trigger_fns/app_grants_apply_tg

BEGIN;
CREATE TRIGGER app_grants_insert_trg 
 BEFORE INSERT ON "vybez_memberships_public".app_grants 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".app_grants_apply_tg ( );
COMMIT;
