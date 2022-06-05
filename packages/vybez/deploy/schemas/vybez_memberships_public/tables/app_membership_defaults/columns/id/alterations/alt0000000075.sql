-- Deploy: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000000075 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_membership_defaults 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
