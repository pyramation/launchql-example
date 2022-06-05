-- Revert: schemas/vybez_public/tables/users/triggers/app_mbr_trg from pg

BEGIN;
DROP TRIGGER app_mbr_trg ON "vybez_public".users;
COMMIT;  

