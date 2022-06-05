-- Revert: schemas/vybez_status_private/procedures/upsert_achve/procedure from pg

BEGIN;


DROP FUNCTION function_schema.upsert_achve;
COMMIT;  

