-- Deploy: schemas/vybez_invites_public/tables/claimed_invites/constraints/claimed_invites_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/claimed_invites/table

BEGIN;

ALTER TABLE "vybez_invites_public".claimed_invites
    ADD CONSTRAINT claimed_invites_pkey PRIMARY KEY (id);
COMMIT;
