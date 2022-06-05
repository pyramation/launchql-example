-- Revert: schemas/vybez_memberships_public/tables/admin_grants/alterations/alt0000000243 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

