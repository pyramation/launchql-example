-- Revert: schemas/vybez_invites_public/tables/group_invites/table from pg

BEGIN;
DROP TABLE "vybez_invites_public".group_invites;
COMMIT;  

