select
  {{ adapter.quote("id") }},
  {{ adapter.quote("birthdate") }},
  {{ adapter.quote("deathdate") }},
  {{ adapter.quote("ssn") }},
  {{ adapter.quote("drivers") }},
  {{ adapter.quote("passport") }},
  {{ adapter.quote("prefix") }},
  {{ adapter.quote("first") }},
  {{ adapter.quote("last") }},
  {{ adapter.quote("suffix") }},
  {{ adapter.quote("maiden") }},
  {{ adapter.quote("marital") }},
  {{ adapter.quote("race") }},
  {{ adapter.quote("ethnicity") }},
  {{ adapter.quote("gender") }},
  {{ adapter.quote("birthplace") }},
  {{ adapter.quote("address") }},
  {{ adapter.quote("city") }},
  {{ adapter.quote("state") }},
  {{ adapter.quote("county") }},
  {{ adapter.quote("zip") }},
  {{ adapter.quote("lat") }},
  {{ adapter.quote("lon") }},
  {{ adapter.quote("healthcare_expenses") }},
  {{ adapter.quote("healthcare_coverage") }}
from {{ source('synthea', 'patients') }}