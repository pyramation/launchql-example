-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/columns/name/alterations/alt0000000384 from pg

BEGIN;


ALTER TABLE "vybez_simple_secrets".user_secrets 
    ALTER COLUMN name DROP NOT NULL;


COMMIT;  

