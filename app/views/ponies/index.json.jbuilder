json.array!(@ponies) do |pony|
  json.extract! pony, :id, :name, :age, :height, :colour, :rate, :picture
  json.url pony_url(pony, format: :json)
end
