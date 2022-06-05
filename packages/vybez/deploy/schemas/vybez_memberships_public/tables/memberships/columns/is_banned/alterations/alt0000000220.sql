-- Deploy: schemas/vybez_memberships_public/tables/memberships/columns/is_banned/alterations/alt0000000220 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/is_banned/column

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_banned SET NOT NULL;
COMMIT;
