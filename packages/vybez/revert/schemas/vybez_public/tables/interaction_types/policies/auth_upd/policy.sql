-- Revert: schemas/vybez_public/tables/interaction_types/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".interaction_types;
COMMIT;  

