-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/id/alterations/alt0000000300 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

