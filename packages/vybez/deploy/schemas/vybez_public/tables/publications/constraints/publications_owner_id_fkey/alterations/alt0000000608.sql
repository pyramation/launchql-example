-- Deploy: schemas/vybez_public/tables/publications/constraints/publications_owner_id_fkey/alterations/alt0000000608 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/constraints/publications_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT publications_owner_id_fkey ON "vybez_public".publications IS E'@omit manyToMany';
COMMIT;
