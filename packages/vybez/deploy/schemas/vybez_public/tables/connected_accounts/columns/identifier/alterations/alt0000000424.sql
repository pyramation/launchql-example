-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/identifier/alterations/alt0000000424 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table
-- requires: schemas/vybez_public/tables/connected_accounts/columns/identifier/column

BEGIN;

ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN identifier SET NOT NULL;
COMMIT;
