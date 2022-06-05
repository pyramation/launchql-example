-- Deploy: schemas/vybez_memberships_public/tables/members/indexes/members_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table
-- requires: schemas/vybez_memberships_public/tables/members/columns/is_admin/column

BEGIN;
CREATE INDEX members_is_admin_idx ON "vybez_memberships_public".members (is_admin);
COMMIT;
