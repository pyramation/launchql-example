-- Deploy: schemas/vybez_public/tables/role_types/constraints/role_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/role_types/table

BEGIN;

ALTER TABLE "vybez_public".role_types
    ADD CONSTRAINT role_types_pkey PRIMARY KEY (id);
COMMIT;
