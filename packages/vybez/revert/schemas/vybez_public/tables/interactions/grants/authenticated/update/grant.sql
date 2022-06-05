-- Revert: schemas/vybez_public/tables/interactions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".interactions FROM authenticated;
COMMIT;  

