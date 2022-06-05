-- Verify: schemas/vybez_public/tables/interaction_types/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.interaction_types');
COMMIT;  

