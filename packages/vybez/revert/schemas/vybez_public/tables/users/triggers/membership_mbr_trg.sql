-- Revert: schemas/vybez_public/tables/users/triggers/membership_mbr_trg from pg

BEGIN;
DROP TRIGGER membership_mbr_trg ON "vybez_public".users;
COMMIT;  

