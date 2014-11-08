json.array!(@aspects) do |aspect|
  json.extract! aspect, :id, :name
  json.url aspect_url(aspect, format: :json)
end
