-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_admin/alterations/alt0000000327 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_admin DROP NOT NULL;


COMMIT;  

