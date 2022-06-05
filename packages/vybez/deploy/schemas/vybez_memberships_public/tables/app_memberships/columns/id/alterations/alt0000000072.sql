-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/columns/id/alterations/alt0000000072 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
