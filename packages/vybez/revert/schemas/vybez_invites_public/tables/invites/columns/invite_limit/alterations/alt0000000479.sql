-- Revert: schemas/vybez_invites_public/tables/invites/columns/invite_limit/alterations/alt0000000479 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN invite_limit DROP NOT NULL;


COMMIT;  

