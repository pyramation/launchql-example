-- Deploy: schemas/vybez_memberships_public/tables/memberships/columns/is_approved/alterations/alt0000000219 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/is_approved/column

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_approved SET DEFAULT false;
COMMIT;
