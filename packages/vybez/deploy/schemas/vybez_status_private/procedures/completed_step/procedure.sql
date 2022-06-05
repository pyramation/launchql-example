-- Deploy: schemas/vybez_status_private/procedures/completed_step/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_private/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table

BEGIN;

CREATE FUNCTION "vybez_status_private".completed_step (
  step text,
  actor_id uuid DEFAULT jwt_public.current_user_id()
) RETURNS void AS $EOFCODE$
BEGIN
  IF (actor_id IS NOT NULL) THEN 
    INSERT INTO "vybez_status_public".app_steps ( name, actor_id, count )
    VALUES ( step, actor_id, 1 );
  END IF;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_status_private".completed_step TO authenticated;
COMMIT;
