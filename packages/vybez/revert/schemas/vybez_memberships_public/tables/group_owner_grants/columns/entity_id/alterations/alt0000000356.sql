-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/entity_id/alterations/alt0000000356 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

