-- Revert: schemas/vybez_public/tables/interaction_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".interaction_types FROM authenticated;
COMMIT;  

