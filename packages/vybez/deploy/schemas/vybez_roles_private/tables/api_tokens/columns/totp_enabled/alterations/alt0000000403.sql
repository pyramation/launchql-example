-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/totp_enabled/alterations/alt0000000403 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/totp_enabled/column

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN totp_enabled SET DEFAULT FALSE;
COMMIT;
