# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Studios
warner_bros = Studio.new
warner_bros["name"] = "Warner Bros."
warner_bros.save

#Movies
batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year_released"] = 2005
batman_begins["rated"] = "PG-13"
batman_begins["studio"] = warner_bros
batman_begins.save

the_dark_knight = Movie.new
the_dark_knight["title"] = "The Dark Knight"
the_dark_knight["year_released"] = 2008
the_dark_knight["rated"] = "PG-13"
the_dark_knight["studio"] = warner_bros
the_dark_knight.save

the_dark_knight_rises = Movie.new
the_dark_knight_rises["title"] = "The Dark Knight Rises"
the_dark_knight_rises["year_released"] = 2012
the_dark_knight_rises["rated"] = "PG-13"
the_dark_knight_rises["studio"] = warner_bros
the_dark_knight_rises.save

#Actors
christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"
christian_bale.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"
liam_neeson.save

katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"
katie_holmes.save

gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"
gary_oldman.save

heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger"
heath_ledger.save

aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"
aaron_eckhart.save

maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"
tom_hardy.save

joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"
anne_hathaway.save

#Roles
Role.create([
  {
    movie: batman_begins,
    actor: christian_bale,
    character_name: "Bruce Wayne"
  },
  {
    movie: batman_begins,
    actor: michael_caine,
    character_name: "Alfred"
  },
  {
    movie: batman_begins,
    actor: liam_neeson,
    character_name: "Ra's Al Ghul"
  },
  {
    movie: batman_begins,
    actor: katie_holmes,
    character_name: "Rachel Dawes"
  },
  {
    movie: batman_begins,
    actor: gary_oldman,
    character_name: "Commissioner Gordon"
  },
  {
    movie: the_dark_knight,
    actor: christian_bale,
    character_name: "Bruce Wayne"
  },
  {
    movie: the_dark_knight,
    actor: heath_ledger,
    character_name: "Joker"
  },
  {
    movie: the_dark_knight,
    actor: aaron_eckhart,
    character_name: "Harvey Dent"
  },
  {
    movie: the_dark_knight,
    actor: michael_caine,
    character_name: "Alfred"
  },
  {
    movie: the_dark_knight,
    actor: maggie_gyllenhaal,
    character_name: "Rachel Dawes"
  },
  {
    movie: the_dark_knight_rises,
    actor: christian_bale,
    character_name: "Bruce Wayne"
  },
  {
    movie: the_dark_knight_rises,
    actor: gary_oldman,
    character_name: "Commissioner Gordon"
  },
  {
    movie: the_dark_knight_rises,
    actor: tom_hardy,
    character_name: "Bane"
  }
])