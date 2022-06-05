-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/ip/alterations/alt0000000394 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/ip/column

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN ip SET DEFAULT jwt_public.current_ip_address();
COMMIT;
