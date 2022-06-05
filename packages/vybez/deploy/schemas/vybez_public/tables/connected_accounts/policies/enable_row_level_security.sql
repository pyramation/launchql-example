-- Deploy: schemas/vybez_public/tables/connected_accounts/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "vybez_public".connected_accounts
    ENABLE ROW LEVEL SECURITY;
COMMIT;
