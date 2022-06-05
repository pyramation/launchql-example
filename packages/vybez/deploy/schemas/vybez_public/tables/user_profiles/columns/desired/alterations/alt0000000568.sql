-- Deploy: schemas/vybez_public/tables/user_profiles/columns/desired/alterations/alt0000000568 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/columns/desired/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_profiles.desired IS E'user wanted tags';
COMMIT;
