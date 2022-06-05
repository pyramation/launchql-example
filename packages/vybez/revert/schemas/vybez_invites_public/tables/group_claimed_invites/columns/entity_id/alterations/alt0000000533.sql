-- Revert: schemas/vybez_invites_public/tables/group_claimed_invites/columns/entity_id/alterations/alt0000000533 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_claimed_invites 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

