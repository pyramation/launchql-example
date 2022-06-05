-- Deploy: schemas/vybez_public/tables/user_profiles/columns/reputation/alterations/alt0000000566 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/columns/reputation/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_profiles.reputation IS E'user reputation';
COMMIT;
