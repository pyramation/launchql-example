-- Revert: schemas/vybez_permissions_public/tables/app_permission_defaults/triggers/app_permission_defaults_insert_trg from pg

BEGIN;
DROP TRIGGER app_permission_defaults_insert_trg ON "vybez_permissions_public".app_permission_defaults;
COMMIT;  

