-- Revert: schemas/vybez_roles_public/procedures/verify_email/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".verify_email;
COMMIT;  

