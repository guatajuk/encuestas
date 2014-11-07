json.array!(@surveys) do |survey|
  json.extract! survey, :id, :details, :deadline
  json.url survey_url(survey, format: :json)
end
