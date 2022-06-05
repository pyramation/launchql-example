-- Revert: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( is_banned, is_approved, is_disabled, granted ) ON TABLE "vybez_memberships_public".memberships FROM authenticated;
COMMIT;  

