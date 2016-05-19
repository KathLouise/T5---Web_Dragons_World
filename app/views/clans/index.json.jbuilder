json.array!(@clans) do |clan|
  json.extract! clan, :id, :user_id, :dragon_id, :name, :species
  json.url clan_url(clan, format: :json)
end
