SELECT
    {{ dbt_utils.generate_surrogate_key(['patient_id']) }} AS person_id
    , 0 AS gender_concept_id
    , DATE_PART('year', birth_date) AS year_of_birth
    , DATE_PART('month', birth_date) AS month_of_birth
    , DATE_PART('day', birth_date) AS day_of_birth
    , NULL AS birth_datetime
    , 0 AS race_concept_id
    , 0 AS ethnicity_concept_id
    , NULL AS location_id
    , NULL AS provider_id
    , NULL AS care_site_id
    , patient_id AS person_source_value
    , NULL AS gender_source_value
    , 0 AS gender_source_concept_id
    , race AS race_source_value
    , 0 AS race_source_concept_id
    , ethnicity AS ethnicity_source_value
    , 0 AS ethnicity_source_concept_id
FROM {{ ref('stg_synthea__patients') }}
