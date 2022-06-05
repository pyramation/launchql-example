-- Deploy: schemas/vybez_memberships_public/tables/app_membership_defaults/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_membership_defaults/table

BEGIN;
GRANT INSERT ON TABLE "vybez_memberships_public".app_membership_defaults TO authenticated;
COMMIT;
