-- Deploy: schemas/vybez_limits_public/tables/app_limits/constraints/app_limits_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".app_limits
    ADD CONSTRAINT app_limits_pkey PRIMARY KEY (id);
COMMIT;
