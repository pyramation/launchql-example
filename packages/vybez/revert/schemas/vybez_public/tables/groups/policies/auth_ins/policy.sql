-- Revert: schemas/vybez_public/tables/groups/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".groups;
COMMIT;  

