-- Deploy: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;

ALTER TABLE "vybez_public".interaction_types
    ADD CONSTRAINT interaction_types_pkey PRIMARY KEY (id);
COMMIT;
