-- Revert: schemas/vybez_memberships_public/tables/group_memberships/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( is_banned, is_approved, is_disabled, granted ) ON TABLE "vybez_memberships_public".group_memberships FROM authenticated;
COMMIT;  

