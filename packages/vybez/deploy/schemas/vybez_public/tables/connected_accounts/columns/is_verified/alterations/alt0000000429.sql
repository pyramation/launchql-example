-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/is_verified/alterations/alt0000000429 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table
-- requires: schemas/vybez_public/tables/connected_accounts/columns/is_verified/column

BEGIN;

ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN is_verified SET DEFAULT false;
COMMIT;
