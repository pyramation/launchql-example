-- Deploy: schemas/vybez_status_public/procedures/steps_required/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_achievements/table
-- requires: schemas/vybez_status_public/tables/app_level_requirements/table

BEGIN;

CREATE FUNCTION "vybez_status_public".steps_required (
    vlevel text,
    vrole_id uuid DEFAULT jwt_public.current_user_id()
)
  RETURNS SETOF "vybez_status_public".app_level_requirements
AS $CODEZ$
BEGIN
  RETURN QUERY
  SELECT 
      app_level_requirements.id,
      app_level_requirements.name,
      app_level_requirements.level,
      app_level_requirements.description,
      -1*(coalesce(app_achievements.count,0)-app_level_requirements.required_count) as required_count,
      app_level_requirements.priority
    FROM
      "vybez_status_public".app_level_requirements 
    FULL OUTER JOIN "vybez_status_public".app_achievements ON (
      app_achievements.name = app_level_requirements.name
      AND app_achievements.actor_id = vrole_id
    )	
    JOIN "vybez_status_public".app_levels ON (app_level_requirements.level = app_levels.name)
  WHERE
    app_level_requirements.level = vlevel
    AND -1*(coalesce(app_achievements.count,0)-app_level_requirements.required_count) > 0
  ORDER BY priority ASC;
END;
$CODEZ$
LANGUAGE plpgsql STABLE;
GRANT EXECUTE ON FUNCTION "vybez_status_public".steps_required TO authenticated;
COMMIT;
