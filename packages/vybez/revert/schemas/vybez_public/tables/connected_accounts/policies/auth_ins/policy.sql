-- Revert: schemas/vybez_public/tables/connected_accounts/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".connected_accounts;
COMMIT;  

