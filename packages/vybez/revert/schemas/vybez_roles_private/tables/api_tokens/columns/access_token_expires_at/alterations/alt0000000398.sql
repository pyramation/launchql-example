-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/access_token_expires_at/alterations/alt0000000398 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN access_token_expires_at DROP NOT NULL;


COMMIT;  

