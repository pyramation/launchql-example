-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/user_id/alterations/alt0000000392 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN user_id DROP NOT NULL;


COMMIT;  

