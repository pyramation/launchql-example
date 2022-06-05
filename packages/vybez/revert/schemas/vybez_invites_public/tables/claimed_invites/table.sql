-- Revert: schemas/vybez_invites_public/tables/claimed_invites/table from pg

BEGIN;
DROP TABLE "vybez_invites_public".claimed_invites;
COMMIT;  

