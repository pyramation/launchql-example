-- Revert: schemas/vybez_roles_private/tables/api_tokens/table from pg

BEGIN;
DROP TABLE "vybez_roles_private".api_tokens;
COMMIT;  

