-- Revert: schemas/vybez_public/tables/interactions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".interactions FROM authenticated;
COMMIT;  

