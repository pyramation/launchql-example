-- Deploy: schemas/vybez_memberships_public/tables/grants/triggers/grants_insert_trg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table
-- requires: schemas/vybez_memberships_private/trigger_fns/grants_apply_tg

BEGIN;
CREATE TRIGGER grants_insert_trg 
 BEFORE INSERT ON "vybez_memberships_public".grants 
 FOR EACH ROW 
 EXECUTE PROCEDURE "vybez_memberships_private".grants_apply_tg ( );
COMMIT;
