-- Revert: schemas/vybez_memberships_public/tables/memberships/triggers/_99999_groups_mbr_dtrg from pg

BEGIN;
DROP TRIGGER _99999_groups_mbr_dtrg ON "vybez_memberships_public".memberships;
COMMIT;  

