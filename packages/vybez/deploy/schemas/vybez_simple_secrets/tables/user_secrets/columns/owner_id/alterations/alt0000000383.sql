-- Deploy: schemas/vybez_simple_secrets/tables/user_secrets/columns/owner_id/alterations/alt0000000383 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_simple_secrets".user_secrets 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
