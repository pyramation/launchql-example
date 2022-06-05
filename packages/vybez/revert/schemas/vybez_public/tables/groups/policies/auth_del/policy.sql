-- Revert: schemas/vybez_public/tables/groups/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".groups;
COMMIT;  

