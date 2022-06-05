-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/columns/id/alterations/alt0000000381 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/columns/id/column

BEGIN;

ALTER TABLE "vybez_simple_secrets".user_secrets 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
