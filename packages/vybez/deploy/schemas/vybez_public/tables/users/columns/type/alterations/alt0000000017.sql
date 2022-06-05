-- Deploy: schemas/vybez_public/tables/users/columns/type/alterations/alt0000000017 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/type/column

BEGIN;

ALTER TABLE "vybez_public".users 
    ALTER COLUMN type SET NOT NULL;
COMMIT;
