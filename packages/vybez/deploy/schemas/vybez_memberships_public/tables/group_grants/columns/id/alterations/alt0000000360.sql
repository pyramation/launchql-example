-- Deploy: schemas/vybez_memberships_public/tables/group_grants/columns/id/alterations/alt0000000360 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table
-- requires: schemas/vybez_memberships_public/tables/group_grants/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_grants 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
