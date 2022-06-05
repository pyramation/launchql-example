-- Revert: schemas/vybez_public/tables/phone_numbers/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".phone_numbers;
COMMIT;  

