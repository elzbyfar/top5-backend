# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rappersAllTime = Active_Thread.create(
  name: "Rappers of All Time", 
  tags: ["hip hop", "rap"],
  eras: [1970, 1980, 1990, 2000, 2010, 2020],
  for_groups: false
)

artistsOfAllTime = Active_Thread.create(
  name: "Artists of All Time", 
  tags: [],
  eras: [],
  for_groups: false
)


# rapGroupsAllTime = Active_Thread.create(
#   name: "Rap Groups of All Time", 
#   tags: ["hip hop", "rap"],
#   eras: [1970, 1980, 1990, 2000, 2010, 2020],
#   artist_type: ['group']
# )

# rappersOfThe80s = Active_Thread.create(
#   name: "Rappers of the 80's", 
#   tags: ["hip hop", "rap"], 
#   eras: [1980, 1990],
#   artist_type: ['solo', 'group']
# )

# rappersOfThe90s = Active_Thread.create(
#   name: "Rappers of the 90's", 
#   tags: ["hip hop", "rap"], 
#   eras: [1990, 2000],
#   artist_type: ['solo', 'group']
# )

# rappersOfThe00s = Active_Thread.create(
#   name: "Rappers of the 00's", 
#   tags: ["hip hop", "rap"], 
#   eras: [2000, 2010],
#   artist_type: ['solo', 'group']
# )

# rappersOfThe10s = Active_Thread.create(
#   name: "Rappers of the 10's", 
#   tags: ["hip hop", "rap"], 
#   eras: [2010, 2020],
#   artist_type: ['solo', 'group']
# )
