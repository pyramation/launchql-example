-- Revert: schemas/vybez_memberships_public/tables/group_grants/alterations/alt0000000358 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

