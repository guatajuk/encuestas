json.array!(@survey_types) do |survey_type|
  json.extract! survey_type, :id, :name
  json.url survey_type_url(survey_type, format: :json)
end
