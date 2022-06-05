-- Revert: schemas/vybez_roles_private/tables/api_tokens/columns/totp_enabled/alterations/alt0000000403 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN totp_enabled DROP DEFAULT;

COMMIT;  

