json.array!(@sightings) do |sighting|
  json.extract! sighting, :id, :name, :lat, :long, :fuckedup
  json.url sighting_url(sighting, format: :json)
end
