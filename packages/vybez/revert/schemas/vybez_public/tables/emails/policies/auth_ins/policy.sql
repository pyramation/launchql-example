-- Revert: schemas/vybez_public/tables/emails/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".emails;
COMMIT;  

