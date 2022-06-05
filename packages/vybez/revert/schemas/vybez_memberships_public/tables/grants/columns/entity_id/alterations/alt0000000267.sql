-- Revert: schemas/vybez_memberships_public/tables/grants/columns/entity_id/alterations/alt0000000267 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

