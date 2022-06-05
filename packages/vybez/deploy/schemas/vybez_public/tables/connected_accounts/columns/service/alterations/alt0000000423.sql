-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/service/alterations/alt0000000423 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/columns/service/column

BEGIN;
COMMENT ON COLUMN "vybez_public".connected_accounts.service IS E'The service used, e.g. `twitter` or `github`.';
COMMIT;
