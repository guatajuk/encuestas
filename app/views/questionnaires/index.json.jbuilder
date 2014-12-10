json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :detail
  json.url questionnaire_url(questionnaire, format: :json)
end
