-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/alterations/alt0000000202 from pg

BEGIN;


ALTER TABLE "vybez_memberships_private".memberships_acl
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

