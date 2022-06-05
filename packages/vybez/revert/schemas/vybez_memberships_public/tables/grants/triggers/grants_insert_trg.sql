-- Revert: schemas/vybez_memberships_public/tables/grants/triggers/grants_insert_trg from pg

BEGIN;
DROP TRIGGER grants_insert_trg ON "vybez_memberships_public".grants;
COMMIT;  

