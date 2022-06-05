-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/columns/is_grant/alterations/alt0000000345 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_admin_grants 
    ALTER COLUMN is_grant DROP NOT NULL;


COMMIT;  

