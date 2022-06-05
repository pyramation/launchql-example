-- Deploy: schemas/vybez_public/tables/connected_accounts/columns/identifier/alterations/alt0000000425 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/columns/identifier/column

BEGIN;
COMMENT ON COLUMN "vybez_public".connected_accounts.identifier IS E'A unique identifier for the user within the service';
COMMIT;
