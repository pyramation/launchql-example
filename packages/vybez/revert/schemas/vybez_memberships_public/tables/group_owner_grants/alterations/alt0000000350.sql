-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/alterations/alt0000000350 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

