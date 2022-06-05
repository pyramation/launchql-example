-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/access_token/alterations/alt0000000397 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/access_token/column

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN access_token SET DEFAULT encode( gen_random_bytes( 48 ), 'hex' );
COMMIT;
