-- Revert: schemas/vybez_invites_public/tables/invites/table from pg

BEGIN;
DROP TABLE "vybez_invites_public".invites;
COMMIT;  

