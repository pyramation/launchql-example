-- Revert: schemas/vybez_public/tables/interaction_types/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".interaction_types;
COMMIT;  

