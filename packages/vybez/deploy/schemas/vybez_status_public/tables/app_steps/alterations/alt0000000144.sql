-- Deploy: schemas/vybez_status_public/tables/app_steps/alterations/alt0000000144 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table

BEGIN;
COMMENT ON TABLE "vybez_status_public".app_steps IS E'The user achieving a requirement for a level. Log table that has every single step ever taken.';
COMMIT;
