-- Revert: schemas/vybez_public/tables/interactions/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".interactions;
COMMIT;  

