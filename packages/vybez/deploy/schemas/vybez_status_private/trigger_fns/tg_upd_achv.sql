-- Deploy: schemas/vybez_status_private/trigger_fns/tg_upd_achv to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_private/schema
-- requires: schemas/vybez_status_private/procedures/upsert_achve/procedure

BEGIN;

CREATE FUNCTION "vybez_status_private".tg_upd_achv ()
  RETURNS TRIGGER
  AS
$EOFCODE$
DECLARE
BEGIN
    PERFORM "vybez_status_private".upsert_achve(NEW.actor_id, NEW.name, NEW.count);
    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_status_private".tg_upd_achv TO authenticated;
COMMIT;
