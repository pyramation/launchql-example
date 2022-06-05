-- Revert: schemas/vybez_roles_public/procedures/confirm_delete_account/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".confirm_delete_account;

COMMIT;  

