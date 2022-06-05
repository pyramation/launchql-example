-- Deploy: schemas/vybez_public/tables/interactions/constraints/interactions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions
    ADD CONSTRAINT interactions_pkey PRIMARY KEY (id);
COMMIT;
