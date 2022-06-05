-- Deploy: schemas/vybez_public/tables/user_profiles/columns/tags/alterations/alt0000000567 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/columns/tags/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_profiles.tags IS E'user tags';
COMMIT;
