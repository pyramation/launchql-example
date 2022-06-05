-- Deploy: schemas/vybez_public/tables/users/columns/id/alterations/alt0000000011 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column

BEGIN;

ALTER TABLE "vybez_public".users 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
