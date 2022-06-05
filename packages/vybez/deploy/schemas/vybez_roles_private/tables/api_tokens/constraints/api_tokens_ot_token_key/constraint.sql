-- Deploy: schemas/vybez_roles_private/tables/api_tokens/constraints/api_tokens_ot_token_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens
    ADD CONSTRAINT api_tokens_ot_token_key UNIQUE (ot_token);
COMMIT;
