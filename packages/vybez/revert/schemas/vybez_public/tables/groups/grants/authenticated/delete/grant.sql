-- Revert: schemas/vybez_public/tables/groups/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".groups FROM authenticated;
COMMIT;  

