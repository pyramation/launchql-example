-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/constraints/user_secrets_owner_id_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_simple_secrets".user_secrets 
    DROP CONSTRAINT user_secrets_owner_id_name_key;

COMMIT;  

