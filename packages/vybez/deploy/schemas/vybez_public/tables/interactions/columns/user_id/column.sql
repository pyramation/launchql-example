-- Deploy: schemas/vybez_public/tables/interactions/columns/user_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions ADD COLUMN user_id uuid;
COMMIT;
