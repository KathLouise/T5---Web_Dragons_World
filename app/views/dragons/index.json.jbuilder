json.array!(@dragons) do |dragon|
  json.extract! dragon, :id, :user_id, :name, :race, :gender
  json.url dragon_url(dragon, format: :json)
end
