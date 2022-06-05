-- Revert: schemas/vybez_public/tables/groups/constraints/groups_owner_id_fkey/alterations/alt0000000276 from pg

BEGIN;
COMMENT ON CONSTRAINT groups_owner_id_fkey ON "vybez_public".groups IS NULL;
COMMIT;  

