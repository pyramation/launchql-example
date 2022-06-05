-- Revert: schemas/vybez_public/tables/phone_numbers/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".phone_numbers;
COMMIT;  

