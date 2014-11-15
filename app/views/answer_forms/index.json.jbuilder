json.array!(@answer_forms) do |answer_form|
  json.extract! answer_form, :id, :details
  json.url answer_form_url(answer_form, format: :json)
end
