-- Revert: schemas/vybez_memberships_public/tables/group_memberships/alterations/alt0000000299 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

