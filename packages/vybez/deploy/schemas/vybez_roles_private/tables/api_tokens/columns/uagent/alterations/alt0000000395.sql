-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/uagent/alterations/alt0000000395 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/uagent/column

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens 
    ALTER COLUMN uagent SET DEFAULT jwt_public.current_user_agent();
COMMIT;
