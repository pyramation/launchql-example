-- Deploy: schemas/vybez_public/tables/role_types/columns/name/alterations/alt0000000016 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/role_types/table
-- requires: schemas/vybez_public/tables/role_types/columns/name/column

BEGIN;

ALTER TABLE "vybez_public".role_types 
    ALTER COLUMN name SET NOT NULL;
COMMIT;
