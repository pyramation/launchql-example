-- Deploy: schemas/vybez_public/tables/user_profiles/columns/user_id/alterations/alt0000000563 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_profiles/table
-- requires: schemas/vybez_public/tables/user_profiles/columns/user_id/column

BEGIN;

ALTER TABLE "vybez_public".user_profiles 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
