-- Revert: schemas/vybez_memberships_public/tables/group_grants/columns/permissions/alterations/alt0000000361 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants 
    ALTER COLUMN permissions DROP NOT NULL;


COMMIT;  

