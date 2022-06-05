-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/access_token_expires_at/alterations/alt0000000398 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/access_token_expires_at/column

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN access_token_expires_at SET NOT NULL;
COMMIT;
