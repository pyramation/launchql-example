-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/columns/entity_id/alterations/alt0000000348 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

