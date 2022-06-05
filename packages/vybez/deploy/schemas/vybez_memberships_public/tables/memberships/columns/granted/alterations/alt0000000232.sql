-- Deploy: schemas/vybez_memberships_public/tables/memberships/columns/granted/alterations/alt0000000232 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/granted/column

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN granted SET NOT NULL;
COMMIT;
