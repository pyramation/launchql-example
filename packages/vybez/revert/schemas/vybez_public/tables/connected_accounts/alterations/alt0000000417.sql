-- Revert: schemas/vybez_public/tables/connected_accounts/alterations/alt0000000417 from pg

BEGIN;


ALTER TABLE "vybez_public".connected_accounts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

