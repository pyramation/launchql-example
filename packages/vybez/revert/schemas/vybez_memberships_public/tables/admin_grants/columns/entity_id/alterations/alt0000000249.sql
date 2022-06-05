-- Revert: schemas/vybez_memberships_public/tables/admin_grants/columns/entity_id/alterations/alt0000000249 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".admin_grants 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

