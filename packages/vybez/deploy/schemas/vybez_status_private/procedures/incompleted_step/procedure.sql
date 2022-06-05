-- Deploy: schemas/vybez_status_private/procedures/incompleted_step/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_private/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table
-- requires: schemas/vybez_status_public/tables/app_achievements/table

BEGIN;

CREATE FUNCTION "vybez_status_private".incompleted_step (
  step text,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  IF (incompleted_step.actor_id IS NOT NULL) THEN 
    DELETE FROM "vybez_status_public".app_steps s
      WHERE s.actor_id = incompleted_step.actor_id
      AND s.name = step;
    DELETE FROM "vybez_status_public".app_achievements a
      WHERE a.actor_id = incompleted_step.actor_id
      AND a.name = step;
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_status_private".incompleted_step TO authenticated;
COMMIT;
