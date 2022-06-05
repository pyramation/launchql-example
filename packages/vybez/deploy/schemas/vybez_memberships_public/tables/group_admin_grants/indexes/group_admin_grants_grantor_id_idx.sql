-- Deploy: schemas/vybez_memberships_public/tables/group_admin_grants/indexes/group_admin_grants_grantor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_admin_grants/table
-- requires: schemas/vybez_memberships_public/tables/group_admin_grants/columns/grantor_id/column

BEGIN;
CREATE INDEX group_admin_grants_grantor_id_idx ON "vybez_memberships_public".group_admin_grants (grantor_id);
COMMIT;
