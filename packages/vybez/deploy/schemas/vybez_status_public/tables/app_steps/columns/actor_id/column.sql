-- Deploy: schemas/vybez_status_public/tables/app_steps/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table

BEGIN;

ALTER TABLE "vybez_status_public".app_steps ADD COLUMN actor_id uuid;
COMMIT;
