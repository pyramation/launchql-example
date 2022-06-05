-- Revert: schemas/vybez_public/tables/interaction_types/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".interaction_types;
COMMIT;  

