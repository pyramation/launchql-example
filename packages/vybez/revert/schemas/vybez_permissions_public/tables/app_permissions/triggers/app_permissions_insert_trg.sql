-- Revert: schemas/vybez_permissions_public/tables/app_permissions/triggers/app_permissions_insert_trg from pg

BEGIN;
DROP TRIGGER app_permissions_insert_trg ON "vybez_permissions_public".app_permissions;
COMMIT;  

