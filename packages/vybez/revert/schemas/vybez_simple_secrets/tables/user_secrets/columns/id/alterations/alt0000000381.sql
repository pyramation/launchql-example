-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/columns/id/alterations/alt0000000381 from pg

BEGIN;


ALTER TABLE "vybez_simple_secrets".user_secrets 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

