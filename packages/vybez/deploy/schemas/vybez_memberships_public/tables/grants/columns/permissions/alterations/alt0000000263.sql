-- Deploy: schemas/vybez_memberships_public/tables/grants/columns/permissions/alterations/alt0000000263 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table
-- requires: schemas/vybez_memberships_public/tables/grants/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN permissions SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
