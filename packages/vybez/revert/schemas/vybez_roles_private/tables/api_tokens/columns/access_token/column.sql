-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/access_token/column from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens DROP COLUMN access_token;
COMMIT;  

