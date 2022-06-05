-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/is_disabled/alterations/alt0000000321 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN is_disabled DROP NOT NULL;


COMMIT;  

