-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/sender_id/alterations/alt0000000494 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN sender_id DROP DEFAULT;

COMMIT;  

