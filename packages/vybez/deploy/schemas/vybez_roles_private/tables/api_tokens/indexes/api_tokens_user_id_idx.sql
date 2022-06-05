-- Deploy: schemas/vybez_roles_private/tables/api_tokens/indexes/api_tokens_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table
-- requires: schemas/vybez_roles_private/tables/api_tokens/columns/user_id/column

BEGIN;
CREATE INDEX api_tokens_user_id_idx ON "vybez_roles_private".api_tokens (user_id);
COMMIT;
