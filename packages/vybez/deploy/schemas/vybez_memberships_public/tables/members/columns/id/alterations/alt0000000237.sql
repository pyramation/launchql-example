-- Deploy: schemas/vybez_memberships_public/tables/members/columns/id/alterations/alt0000000237 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table
-- requires: schemas/vybez_memberships_public/tables/members/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".members 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
