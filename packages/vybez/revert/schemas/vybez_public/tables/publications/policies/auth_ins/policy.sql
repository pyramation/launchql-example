-- Revert: schemas/vybez_public/tables/publications/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".publications;
COMMIT;  

