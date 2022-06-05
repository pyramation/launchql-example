-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens DROP COLUMN id;
COMMIT;  

