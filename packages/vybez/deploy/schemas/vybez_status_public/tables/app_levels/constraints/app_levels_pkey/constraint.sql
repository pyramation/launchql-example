-- Deploy: schemas/vybez_status_public/tables/app_levels/constraints/app_levels_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_levels/table

BEGIN;

ALTER TABLE "vybez_status_public".app_levels
    ADD CONSTRAINT app_levels_pkey PRIMARY KEY (id);
COMMIT;
