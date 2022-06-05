-- Verify: schemas/vybez_permissions_public/tables/app_permission_defaults/triggers/app_permission_defaults_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_permissions_public.app_permission_defaults_insert_trg');
COMMIT;  

