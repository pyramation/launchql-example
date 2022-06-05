-- Deploy: schemas/vybez_memberships_public/tables/group_owner_grants/indexes/group_owner_grants_grantor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/table
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/columns/grantor_id/column

BEGIN;
CREATE INDEX group_owner_grants_grantor_id_idx ON "vybez_memberships_public".group_owner_grants (grantor_id);
COMMIT;
