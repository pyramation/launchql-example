-- Deploy: schemas/vybez_memberships_public/tables/group_members/columns/id/alterations/alt0000000337 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table
-- requires: schemas/vybez_memberships_public/tables/group_members/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_members 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
