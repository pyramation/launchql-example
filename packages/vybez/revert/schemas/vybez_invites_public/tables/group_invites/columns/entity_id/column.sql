-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites DROP COLUMN entity_id;
COMMIT;  

