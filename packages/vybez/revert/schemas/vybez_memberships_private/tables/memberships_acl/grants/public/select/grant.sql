-- Revert: schemas/vybez_memberships_private/tables/memberships_acl/grants/public/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_private".memberships_acl FROM public;
COMMIT;  

