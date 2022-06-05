-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/id/alterations/alt0000000391 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

