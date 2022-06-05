-- Revert: schemas/vybez_roles_public/procedures/current_ip_address/procedure from pg

BEGIN;


DROP FUNCTION "vybez_roles_public".current_ip_address;

COMMIT;  

