-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/owner_id/alterations/alt0000000420 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table
-- requires: schemas/vybez_public/tables/connected_accounts/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
