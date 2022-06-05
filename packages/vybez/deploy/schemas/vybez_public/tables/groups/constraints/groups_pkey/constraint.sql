-- Deploy: schemas/vybez_public/tables/groups/constraints/groups_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
COMMIT;
