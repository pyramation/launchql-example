-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/ot_token/column from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens DROP COLUMN ot_token;
COMMIT;  

