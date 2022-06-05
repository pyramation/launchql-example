-- Deploy: schemas/vybez_public/tables/publications/constraints/publications_group_id_fkey/alterations/alt0000000605 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/constraints/publications_group_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT publications_group_id_fkey ON "vybez_public".publications IS NULL;
COMMIT;
