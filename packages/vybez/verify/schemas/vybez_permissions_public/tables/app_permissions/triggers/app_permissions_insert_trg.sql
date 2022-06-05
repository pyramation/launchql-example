-- Verify: schemas/vybez_permissions_public/tables/app_permissions/triggers/app_permissions_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_permissions_public.app_permissions_insert_trg');
COMMIT;  

