-- Deploy: schemas/vybez_public/tables/users/alterations/alt0000000009 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;

ALTER TABLE "vybez_public".users
    DISABLE ROW LEVEL SECURITY;
COMMIT;
