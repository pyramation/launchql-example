-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/alterations/alt0000000108 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_admin_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

