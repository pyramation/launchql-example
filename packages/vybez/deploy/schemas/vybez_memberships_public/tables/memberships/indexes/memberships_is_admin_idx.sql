-- Deploy: schemas/vybez_memberships_public/tables/memberships/indexes/memberships_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/is_admin/column

BEGIN;
CREATE INDEX memberships_is_admin_idx ON "vybez_memberships_public".memberships (is_admin);
COMMIT;
