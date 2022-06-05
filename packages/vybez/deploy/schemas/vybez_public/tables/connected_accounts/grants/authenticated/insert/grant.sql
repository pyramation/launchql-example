-- Deploy: schemas/vybez_public/tables/connected_accounts/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table

BEGIN;
GRANT INSERT ( service, identifier, details, owner_id ) ON TABLE "vybez_public".connected_accounts TO authenticated;
COMMIT;
