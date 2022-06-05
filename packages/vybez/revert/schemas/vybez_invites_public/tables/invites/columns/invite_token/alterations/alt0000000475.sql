-- Revert: schemas/vybez_invites_public/tables/invites/columns/invite_token/alterations/alt0000000475 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN invite_token DROP NOT NULL;


COMMIT;  

