-- Revert: schemas/vybez_limits_public/tables/group_member_limits/columns/entity_id/alterations/alt0000000294 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".group_member_limits 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

