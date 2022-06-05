-- Deploy: schemas/vybez_public/tables/connected_accounts/alterations/alt0000000417 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "vybez_public".connected_accounts
    DISABLE ROW LEVEL SECURITY;
COMMIT;
