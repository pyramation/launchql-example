-- Revert: schemas/vybez_simple_secrets/tables/user_secrets/alterations/alt0000000380 from pg

BEGIN;


ALTER TABLE "vybez_simple_secrets".user_secrets
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

