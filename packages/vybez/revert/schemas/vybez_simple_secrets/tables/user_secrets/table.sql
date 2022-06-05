-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/table from pg

BEGIN;
DROP TABLE "vybez_simple_secrets".user_secrets;
COMMIT;  

