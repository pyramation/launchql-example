-- Revert: schemas/vybez_public/tables/publications/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".publications;
COMMIT;  

