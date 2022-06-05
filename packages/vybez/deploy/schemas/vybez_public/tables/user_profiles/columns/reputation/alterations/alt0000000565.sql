-- Deploy: schemas/vybez_public/tables/user_profiles/columns/reputation/alterations/alt0000000565 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table
-- requires: schemas/vybez_public/tables/user_profiles/columns/reputation/column

BEGIN;

ALTER TABLE "vybez_public".user_profiles 
    ALTER COLUMN reputation SET DEFAULT 0;
COMMIT;
