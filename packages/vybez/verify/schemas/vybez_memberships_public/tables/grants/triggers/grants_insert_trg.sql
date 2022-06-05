-- Verify: schemas/vybez_memberships_public/tables/grants/triggers/grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.grants_insert_trg');
COMMIT;  

