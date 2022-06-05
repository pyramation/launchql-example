-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/details/alterations/alt0000000427 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/columns/details/column

BEGIN;
COMMENT ON COLUMN "vybez_public".connected_accounts.details IS E'Additional profile details extracted from this login method';
COMMIT;
