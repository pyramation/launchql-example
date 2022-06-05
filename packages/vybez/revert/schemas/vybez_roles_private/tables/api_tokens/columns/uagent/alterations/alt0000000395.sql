-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/uagent/alterations/alt0000000395 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN uagent DROP DEFAULT;

COMMIT;  

