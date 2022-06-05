-- Deploy: schemas/vybez_memberships_public/tables/memberships/columns/entity_id/alterations/alt0000000235 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table
-- requires: schemas/vybez_memberships_public/tables/memberships/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
