-- Deploy: schemas/vybez_status_public/tables/app_achievements/constraints/app_achievements_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_achievements/table

BEGIN;

ALTER TABLE "vybez_status_public".app_achievements
    ADD CONSTRAINT app_achievements_pkey PRIMARY KEY (id);
COMMIT;
