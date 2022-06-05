-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/expires_at/alterations/alt0000000505 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN expires_at DROP NOT NULL;


COMMIT;  

