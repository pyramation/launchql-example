-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/alterations/alt0000000342 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

