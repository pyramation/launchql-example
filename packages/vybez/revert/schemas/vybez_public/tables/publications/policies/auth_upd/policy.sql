-- Revert: schemas/vybez_public/tables/publications/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".publications;
COMMIT;  

