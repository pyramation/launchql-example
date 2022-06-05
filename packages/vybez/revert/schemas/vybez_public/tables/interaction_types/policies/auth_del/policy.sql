-- Revert: schemas/vybez_public/tables/interaction_types/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".interaction_types;
COMMIT;  

