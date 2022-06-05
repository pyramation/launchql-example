-- Revert: schemas/vybez_public/tables/groups/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".groups;
COMMIT;  

