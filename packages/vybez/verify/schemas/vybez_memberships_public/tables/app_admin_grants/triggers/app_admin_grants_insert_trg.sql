-- Verify: schemas/vybez_memberships_public/tables/app_admin_grants/triggers/app_admin_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.app_admin_grants_insert_trg');
COMMIT;  

