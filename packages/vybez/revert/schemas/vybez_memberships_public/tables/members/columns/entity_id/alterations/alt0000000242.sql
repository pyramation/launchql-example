-- Revert: schemas/vybez_memberships_public/tables/members/columns/entity_id/alterations/alt0000000242 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".members 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

