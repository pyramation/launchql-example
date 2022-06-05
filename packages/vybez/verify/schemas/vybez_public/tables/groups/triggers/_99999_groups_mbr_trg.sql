-- Verify: schemas/vybez_public/tables/groups/triggers/_99999_groups_mbr_trg on pg

BEGIN;
SELECT verify_trigger('vybez_public._99999_groups_mbr_trg');
COMMIT;  

