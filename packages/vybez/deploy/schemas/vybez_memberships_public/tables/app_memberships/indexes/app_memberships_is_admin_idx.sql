-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/indexes/app_memberships_is_admin_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/columns/is_admin/column

BEGIN;
CREATE INDEX app_memberships_is_admin_idx ON "vybez_memberships_public".app_memberships (is_admin);
COMMIT;
