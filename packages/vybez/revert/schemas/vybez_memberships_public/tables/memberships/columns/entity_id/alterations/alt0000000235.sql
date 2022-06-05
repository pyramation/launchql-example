-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/entity_id/alterations/alt0000000235 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

