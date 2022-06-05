-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/columns/entity_id/alterations/alt0000000511 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_claimed_invites 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

