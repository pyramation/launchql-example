-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/access_token/alterations/alt0000000397 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN access_token DROP DEFAULT;

COMMIT;  

