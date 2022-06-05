-- Revert: schemas/vybez_public/tables/users/columns/type/alterations/alt0000000017 from pg

BEGIN;


ALTER TABLE "vybez_public".users 
    ALTER COLUMN type DROP NOT NULL;


COMMIT;  

