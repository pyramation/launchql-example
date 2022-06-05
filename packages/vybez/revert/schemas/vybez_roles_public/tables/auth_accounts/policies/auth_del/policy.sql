-- Revert: schemas/vybez_roles_public/tables/auth_accounts/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_roles_public".auth_accounts;
COMMIT;  

