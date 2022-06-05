-- Revert: schemas/vybez_public/tables/connected_accounts/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".connected_accounts;
COMMIT;  

