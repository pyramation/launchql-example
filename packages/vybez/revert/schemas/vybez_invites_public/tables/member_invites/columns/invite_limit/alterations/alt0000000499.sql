-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/invite_limit/alterations/alt0000000499 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN invite_limit DROP NOT NULL;


COMMIT;  

