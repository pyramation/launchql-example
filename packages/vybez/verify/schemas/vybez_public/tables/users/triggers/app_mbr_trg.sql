-- Verify: schemas/vybez_public/tables/users/triggers/app_mbr_trg on pg

BEGIN;
SELECT verify_trigger('vybez_public.app_mbr_trg');
COMMIT;  

