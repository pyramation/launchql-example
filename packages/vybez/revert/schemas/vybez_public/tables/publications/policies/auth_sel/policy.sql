-- Revert: schemas/vybez_public/tables/publications/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".publications;
COMMIT;  

