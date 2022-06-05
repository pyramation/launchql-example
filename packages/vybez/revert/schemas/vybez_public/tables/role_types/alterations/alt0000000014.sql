-- Revert: schemas/vybez_public/tables/role_types/alterations/alt0000000014 from pg

BEGIN;


ALTER TABLE "vybez_public".role_types
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

