-- Deploy: schemas/vybez_public/tables/user_profiles/columns/bio/alterations/alt0000000564 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/columns/bio/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_profiles.bio IS E'user bio';
COMMIT;
