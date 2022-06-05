-- Revert: schemas/vybez_invites_public/tables/claimed_invites/constraints/claimed_invites_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_invites_public".claimed_invites 
    DROP CONSTRAINT claimed_invites_pkey;

COMMIT;  

