-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/constraints/member_claimed_invites_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_claimed_invites 
    DROP CONSTRAINT member_claimed_invites_entity_id_fkey;

COMMIT;  

