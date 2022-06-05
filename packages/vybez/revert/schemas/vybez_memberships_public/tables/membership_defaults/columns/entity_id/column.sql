-- Revert: schemas/vybez_memberships_public/tables/membership_defaults/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_defaults DROP COLUMN entity_id;
COMMIT;  

