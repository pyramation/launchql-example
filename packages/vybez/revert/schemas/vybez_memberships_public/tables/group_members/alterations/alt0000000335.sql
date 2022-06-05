-- Revert: schemas/vybez_memberships_public/tables/group_members/alterations/alt0000000335 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

