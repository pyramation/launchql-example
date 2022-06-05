-- Revert: schemas/vybez_roles_public/procedures/send_account_deletion_email/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".send_account_deletion_email;
COMMIT;  

