-- Deploy: schemas/vybez_memberships_public/tables/grants/columns/grantor_id/alterations/alt0000000268 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/grants/table
-- requires: schemas/vybez_memberships_public/tables/grants/columns/grantor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
