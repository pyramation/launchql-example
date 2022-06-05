-- Revert: schemas/vybez_memberships_public/tables/memberships/triggers/_99999_groups_mbr_utrg from pg

BEGIN;
DROP TRIGGER _99999_groups_mbr_utrg ON "vybez_memberships_public".memberships;
COMMIT;  

