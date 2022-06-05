-- Verify: schemas/vybez_simple_secrets/tables/user_secrets/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_simple_secrets.user_secrets');
COMMIT;  

