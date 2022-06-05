-- Revert: schemas/vybez_memberships_public/tables/group_members/columns/id/alterations/alt0000000336 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

