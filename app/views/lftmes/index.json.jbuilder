json.array!(@lftmes) do |lftme|
  json.extract! lftme, :id, :user, :request, :location
  json.url lftme_url(lftme, format: :json)
end
