-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/constraints/user_secrets_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_simple_secrets".user_secrets 
    DROP CONSTRAINT user_secrets_pkey;

COMMIT;  

