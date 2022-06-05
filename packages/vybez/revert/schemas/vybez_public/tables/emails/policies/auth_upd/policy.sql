-- Revert: schemas/vybez_public/tables/emails/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".emails;
COMMIT;  

