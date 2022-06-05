-- Revert: schemas/vybez_roles_public/tables/auth_accounts/alterations/alt0000000546 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".auth_accounts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

