-- Revert: schemas/vybez_public/tables/users/columns/username/alterations/alt0000000012 from pg

BEGIN;
ALTER TABLE "vybez_public".users DROP CONSTRAINT users_username_chk;
COMMIT;  

