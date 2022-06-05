-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/columns/name/alterations/alt0000000384 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/columns/name/column

BEGIN;

ALTER TABLE "vybez_simple_secrets".user_secrets 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
