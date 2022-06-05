-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/table from pg

BEGIN;
DROP TABLE "vybez_invites_public".member_claimed_invites;
COMMIT;  

