-- Revert: schemas/vybez_roles_public/procedures/verify_totp/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".verify_totp;
COMMIT;  

