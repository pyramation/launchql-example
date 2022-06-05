-- Verify: schemas/vybez_public/tables/interactions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.interactions');
COMMIT;  

