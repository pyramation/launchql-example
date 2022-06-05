-- Deploy: schemas/vybez_memberships_public/tables/memberships/columns/permissions/alterations/alt0000000231 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN permissions SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
