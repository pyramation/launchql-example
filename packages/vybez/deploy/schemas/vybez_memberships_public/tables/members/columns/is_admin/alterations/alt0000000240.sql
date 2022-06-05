-- Deploy: schemas/vybez_memberships_public/tables/members/columns/is_admin/alterations/alt0000000240 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table
-- requires: schemas/vybez_memberships_public/tables/members/columns/is_admin/column

BEGIN;

ALTER TABLE "vybez_memberships_public".members 
    ALTER COLUMN is_admin SET DEFAULT false;
COMMIT;
