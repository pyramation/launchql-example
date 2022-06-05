-- Revert: schemas/vybez_public/tables/interactions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".interactions FROM authenticated;
COMMIT;  

