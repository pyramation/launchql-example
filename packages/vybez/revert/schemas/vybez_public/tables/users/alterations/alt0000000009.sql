-- Revert: schemas/vybez_public/tables/users/alterations/alt0000000009 from pg

BEGIN;


ALTER TABLE "vybez_public".users
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

