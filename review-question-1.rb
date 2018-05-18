require 'pry'

## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]

# How would you get the url for Bulbasaur's ability?
def ques1(poke_arr)
  poke_arr.each do |item|
    if item[:name] == "bulbasaur"
      item[:abilities].each do |item|
        if item.has_key?(:ability)
          return item[:ability][:url]
        end
      end
    end
  end
end

# How would you return the first pokemon with base experience over 40?
def ques2(poke_arr)
  poke_arr.each do |item|
    if item[:base_experience] > 40
      return item
    end
  end
end

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def ques3(poke_arr)
  poke_arr.map do |item|
    if item[:base_experience] > 40
      item
    end
  end
end

# How would you return an array of all of the pokemon's names?
def ques4(poke_arr)
  names = []
  poke_arr.each do |item|
    names << item[:name]
  end
  names
end

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
def ques5(poke_arr)
  poke_arr.map do |item|
    if item[:weight] > 60
      return true
    end
  end
  return false
end

puts "\n1. Bulbasaur's ability: \"#{ques1(pokemon)}\""
puts "\n2. First pokemon with base experience over 40:"
puts ques2(pokemon)
puts "\n3. ALL pokemon with base experience over 40:"
puts ques3(pokemon)
puts "\n4. Array of all names:"
puts ques4(pokemon)
puts "\n5. Are there pokemon with a weight greater than 60? #{ques5(pokemon)}"
