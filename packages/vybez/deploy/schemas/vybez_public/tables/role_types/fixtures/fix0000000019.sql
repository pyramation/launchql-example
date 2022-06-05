-- Deploy: schemas/vybez_public/tables/role_types/fixtures/fix0000000019 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/role_types/table

BEGIN;
INSERT INTO "vybez_public".role_types (id, name) VALUES (0, 'User'), (1, 'Organization');
COMMIT;
