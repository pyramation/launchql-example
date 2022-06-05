-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/id/alterations/alt0000000419 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table
-- requires: schemas/vybez_public/tables/connected_accounts/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".connected_accounts 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
