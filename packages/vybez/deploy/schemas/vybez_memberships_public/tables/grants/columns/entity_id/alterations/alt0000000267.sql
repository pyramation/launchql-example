-- Deploy: schemas/vybez_memberships_public/tables/grants/columns/entity_id/alterations/alt0000000267 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table
-- requires: schemas/vybez_memberships_public/tables/grants/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
