-- Deploy: schemas/vybez_public/tables/role_types/alterations/alt0000000014 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/role_types/table

BEGIN;

ALTER TABLE "vybez_public".role_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
