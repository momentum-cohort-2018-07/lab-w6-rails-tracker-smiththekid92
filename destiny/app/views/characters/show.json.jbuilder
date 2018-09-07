# json.id @character.id
# json.name @character.name
# json.species @character.species
# json.planet_origin @character.planet_origin

json.links do
  json.self api_v1_character_url(@character)
  json.list api_v1_characters_url
  json.update do
    json.method "PUT"
    json.href api_v1_character_url(@character)
  end
  json.delete do
    json.method "DELETE"
    json.href api_v1_character_url(@character)
  end
end
json.data do
  json.id @character.id
  json.attributes do
    json.name @character.name
    json.species @character.species
    json.planet_origin @character.planet_origin
  end
end