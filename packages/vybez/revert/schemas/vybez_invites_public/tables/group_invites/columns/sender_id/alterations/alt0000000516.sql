-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/sender_id/alterations/alt0000000516 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN sender_id DROP DEFAULT;

COMMIT;  

