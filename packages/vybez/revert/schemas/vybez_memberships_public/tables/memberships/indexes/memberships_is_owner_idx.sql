-- Revert: schemas/vybez_memberships_public/tables/memberships/indexes/memberships_is_owner_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".memberships_is_owner_idx;
COMMIT;  

