-- Deploy: schemas/vybez_public/tables/users/columns/profile_picture/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table

BEGIN;

ALTER TABLE "vybez_public".users ADD COLUMN profile_picture image;
COMMIT;
