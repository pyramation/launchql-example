-- Revert: schemas/vybez_public/tables/users/table from pg

BEGIN;
DROP TABLE "vybez_public".users;
COMMIT;  

