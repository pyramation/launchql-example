-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;
GRANT DELETE ON TABLE "vybez_memberships_public".group_membership_defaults TO authenticated;
COMMIT;
