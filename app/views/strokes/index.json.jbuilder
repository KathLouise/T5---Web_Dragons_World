json.array!(@strokes) do |stroke|
  json.extract! stroke, :id, :user_id, :dragon_id, :name, :kind
  json.url stroke_url(stroke, format: :json)
end
