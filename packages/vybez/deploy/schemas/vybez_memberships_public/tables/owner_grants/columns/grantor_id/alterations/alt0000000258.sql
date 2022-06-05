-- Deploy: schemas/vybez_memberships_public/tables/owner_grants/columns/grantor_id/alterations/alt0000000258 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/owner_grants/table
-- requires: schemas/vybez_memberships_public/tables/owner_grants/columns/grantor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".owner_grants 
    ALTER COLUMN grantor_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
