-- Revert: schemas/vybez_private/procedures/uuid_generate_v4/procedure from pg

BEGIN;


DROP FUNCTION "vybez_private".uuid_generate_v4;
COMMIT;  

