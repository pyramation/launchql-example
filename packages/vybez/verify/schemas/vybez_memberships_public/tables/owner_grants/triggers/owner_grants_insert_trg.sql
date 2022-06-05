-- Verify: schemas/vybez_memberships_public/tables/owner_grants/triggers/owner_grants_insert_trg on pg

BEGIN;
SELECT verify_trigger('vybez_memberships_public.owner_grants_insert_trg');
COMMIT;  

