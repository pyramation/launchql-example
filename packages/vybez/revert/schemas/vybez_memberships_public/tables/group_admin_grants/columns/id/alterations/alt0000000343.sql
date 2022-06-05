-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/columns/id/alterations/alt0000000343 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

