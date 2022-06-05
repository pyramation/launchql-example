-- Deploy: schemas/vybez_public/tables/user_profiles/columns/header_image/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table

BEGIN;

ALTER TABLE "vybez_public".user_profiles ADD COLUMN header_image image;
COMMIT;
