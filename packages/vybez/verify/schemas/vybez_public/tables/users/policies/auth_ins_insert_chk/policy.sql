-- Verify: schemas/vybez_public/tables/users/policies/auth_ins_insert_chk/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_insert_chk', 'vybez_public.users');
COMMIT;  

