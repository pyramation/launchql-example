-- Revert: schemas/vybez_public/tables/interaction_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".interaction_types FROM authenticated;
COMMIT;  

