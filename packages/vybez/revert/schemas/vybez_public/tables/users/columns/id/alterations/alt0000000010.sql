-- Revert: schemas/vybez_public/tables/users/columns/id/alterations/alt0000000010 from pg

BEGIN;


ALTER TABLE "vybez_public".users 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

