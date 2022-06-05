-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/triggers/membership_permissions_insert_trg from pg

BEGIN;
DROP TRIGGER membership_permissions_insert_trg ON "vybez_permissions_public".membership_permissions;
COMMIT;  

