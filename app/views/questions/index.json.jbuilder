json.array!(@questions) do |question|
  json.extract! question, :id, :item, :value, :aspect
  json.url question_url(question, format: :json)
end
