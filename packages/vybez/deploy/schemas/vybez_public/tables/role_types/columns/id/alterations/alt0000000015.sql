-- Deploy: schemas/vybez_public/tables/role_types/columns/id/alterations/alt0000000015 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/role_types/table
-- requires: schemas/vybez_public/tables/role_types/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".role_types 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
