-- Revert: schemas/vybez_roles_private/tables/api_tokens/alterations/alt0000000389 from pg

BEGIN;


ALTER TABLE "vybez_roles_private".api_tokens
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

