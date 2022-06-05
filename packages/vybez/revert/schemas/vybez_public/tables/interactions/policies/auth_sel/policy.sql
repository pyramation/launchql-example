-- Revert: schemas/vybez_public/tables/interactions/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".interactions;
COMMIT;  

