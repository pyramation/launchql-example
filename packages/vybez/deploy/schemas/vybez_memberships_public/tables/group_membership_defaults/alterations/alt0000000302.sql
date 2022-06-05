-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/alterations/alt0000000302 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults
    DISABLE ROW LEVEL SECURITY;
COMMIT;
