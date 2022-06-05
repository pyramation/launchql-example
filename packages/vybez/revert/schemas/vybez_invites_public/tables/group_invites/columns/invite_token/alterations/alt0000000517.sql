-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/invite_token/alterations/alt0000000517 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN invite_token DROP NOT NULL;


COMMIT;  

