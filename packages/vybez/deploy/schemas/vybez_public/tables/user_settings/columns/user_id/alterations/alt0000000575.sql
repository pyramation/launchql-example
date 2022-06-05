-- Deploy: schemas/vybez_public/tables/user_settings/columns/user_id/alterations/alt0000000575 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table
-- requires: schemas/vybez_public/tables/user_settings/columns/user_id/column

BEGIN;

ALTER TABLE "vybez_public".user_settings 
    ALTER COLUMN user_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
