-- Revert: schemas/vybez_public/tables/emails/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".emails;
COMMIT;  

