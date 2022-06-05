-- Revert: schemas/vybez_roles_public/tables/auth_accounts/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_roles_public".auth_accounts;
COMMIT;  

