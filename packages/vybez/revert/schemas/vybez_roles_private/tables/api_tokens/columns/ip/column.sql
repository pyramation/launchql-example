-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/ip/column from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens DROP COLUMN ip;
COMMIT;  

