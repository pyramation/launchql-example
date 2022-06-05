-- Verify: schemas/vybez_public/tables/interaction_types/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.interaction_types');
COMMIT;  

