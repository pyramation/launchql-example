-- Revert: schemas/vybez_invites_public/tables/invites/columns/sender_id/alterations/alt0000000473 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN sender_id DROP NOT NULL;


COMMIT;  

