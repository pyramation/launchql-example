-- Revert: schemas/vybez_public/tables/interaction_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".interaction_types FROM authenticated;
COMMIT;  

