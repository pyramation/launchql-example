-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/details/alterations/alt0000000426 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table
-- requires: schemas/vybez_public/tables/connected_accounts/columns/details/column

BEGIN;

ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN details SET NOT NULL;
COMMIT;
