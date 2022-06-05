-- Revert: schemas/vybez_limits_public/tables/membership_limits/columns/entity_id/column from pg

BEGIN;


ALTER TABLE "vybez_limits_public".membership_limits DROP COLUMN entity_id;
COMMIT;  

