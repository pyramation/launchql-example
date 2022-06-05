-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/multiple/alterations/alt0000000503 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN multiple DROP NOT NULL;


COMMIT;  

