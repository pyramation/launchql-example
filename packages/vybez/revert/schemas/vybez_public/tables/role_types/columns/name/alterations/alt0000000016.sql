-- Revert: schemas/vybez_public/tables/role_types/columns/name/alterations/alt0000000016 from pg

BEGIN;


ALTER TABLE "vybez_public".role_types 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

