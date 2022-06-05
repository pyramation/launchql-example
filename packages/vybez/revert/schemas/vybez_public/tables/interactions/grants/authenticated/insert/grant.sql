-- Revert: schemas/vybez_public/tables/interactions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_public".interactions FROM authenticated;
COMMIT;  

