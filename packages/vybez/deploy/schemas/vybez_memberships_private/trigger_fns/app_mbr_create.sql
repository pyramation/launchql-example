-- Deploy: schemas/vybez_memberships_private/trigger_fns/app_mbr_create to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

CREATE FUNCTION "vybez_memberships_private".app_mbr_create ()
  RETURNS TRIGGER
AS $CODEZ$
DECLARE
BEGIN
    INSERT INTO
    "vybez_memberships_public".app_memberships
      (actor_id)
    VALUES
      (NEW.id);
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
COMMIT;
