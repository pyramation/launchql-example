-- Revert: schemas/vybez_public/tables/interactions/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".interactions;
COMMIT;  

