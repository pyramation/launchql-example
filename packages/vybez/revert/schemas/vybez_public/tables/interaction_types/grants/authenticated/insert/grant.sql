-- Revert: schemas/vybez_public/tables/interaction_types/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_public".interaction_types FROM authenticated;
COMMIT;  

