-- Deploy: schemas/vybez_memberships_public/tables/grants/indexes/grants_entity_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table
-- requires: schemas/vybez_memberships_public/tables/grants/columns/entity_id/column

BEGIN;
CREATE INDEX grants_entity_id_idx ON "vybez_memberships_public".grants (entity_id);
COMMIT;
