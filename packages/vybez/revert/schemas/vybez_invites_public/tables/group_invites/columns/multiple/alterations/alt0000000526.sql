-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/multiple/alterations/alt0000000526 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN multiple DROP DEFAULT;

COMMIT;  

