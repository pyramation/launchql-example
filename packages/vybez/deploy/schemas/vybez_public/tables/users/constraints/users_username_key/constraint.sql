-- Deploy: schemas/vybez_public/tables/users/constraints/users_username_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;

ALTER TABLE "vybez_public".users
    ADD CONSTRAINT users_username_key UNIQUE (username);
COMMIT;
