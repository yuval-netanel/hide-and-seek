json.Name @game.name
json.Points do
  json.array!(@game.points) do |point|
    json.Longtitude point.longtitude
    json.Latitude point.latitude
    json.Question point.question
    json.Order point.order
  end
end
