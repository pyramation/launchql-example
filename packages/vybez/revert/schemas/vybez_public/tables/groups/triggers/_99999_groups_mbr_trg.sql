-- Revert: schemas/vybez_public/tables/groups/triggers/_99999_groups_mbr_trg from pg

BEGIN;
DROP TRIGGER _99999_groups_mbr_trg ON "vybez_public".groups;
COMMIT;  

