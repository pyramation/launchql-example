-- Verify: schemas/vybez_public/tables/interaction_types/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.interaction_types');
COMMIT;  

