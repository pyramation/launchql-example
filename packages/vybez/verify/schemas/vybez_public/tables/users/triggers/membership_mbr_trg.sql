-- Verify: schemas/vybez_public/tables/users/triggers/membership_mbr_trg on pg

BEGIN;
SELECT verify_trigger('vybez_public.membership_mbr_trg');
COMMIT;  

