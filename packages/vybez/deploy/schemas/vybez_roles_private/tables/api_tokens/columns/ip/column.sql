-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/ip/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens ADD COLUMN ip inet;
COMMIT;