-- Revert: schemas/vybez_memberships_public/tables/group_members/indexes/group_members_is_admin_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".group_members_is_admin_idx;
COMMIT;  

