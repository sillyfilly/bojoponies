json.array!(@stables) do |stable|
  json.extract! stable, :id, :name, :location
  json.url stable_url(stable, format: :json)
end
