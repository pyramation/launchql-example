-- Revert: schemas/vybez_public/tables/emails/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".emails;
COMMIT;  

