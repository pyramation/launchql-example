-- Verify: schemas/vybez_memberships_public/tables/app_grants/triggers/app_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.app_grants_insert_trg');
COMMIT;  

