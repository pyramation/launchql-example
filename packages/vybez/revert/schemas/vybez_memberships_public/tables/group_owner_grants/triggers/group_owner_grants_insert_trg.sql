-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/triggers/group_owner_grants_insert_trg from pg

BEGIN;
DROP TRIGGER group_owner_grants_insert_trg ON "vybez_memberships_public".group_owner_grants;
COMMIT;  

