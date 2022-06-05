-- Revert: schemas/vybez_memberships_public/tables/group_members/columns/is_admin/alterations/alt0000000338 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

