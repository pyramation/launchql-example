-- Revert: schemas/vybez_memberships_public/tables/members/indexes/members_is_admin_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".members_is_admin_idx;
COMMIT;  

