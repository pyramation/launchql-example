-- Revert: schemas/vybez_memberships_public/tables/group_grants/columns/entity_id/alterations/alt0000000366 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

