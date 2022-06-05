-- Revert: schemas/vybez_public/tables/connected_accounts/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

