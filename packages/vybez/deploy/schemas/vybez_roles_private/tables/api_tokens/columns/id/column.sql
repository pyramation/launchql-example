-- Deploy: schemas/vybez_roles_private/tables/api_tokens/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_private/schema
-- requires: schemas/vybez_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "vybez_roles_private".api_tokens ADD COLUMN id uuid;
COMMIT;
