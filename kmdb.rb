# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

#Generated Models + Tables

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

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

# Prints a header for the movies output
puts "Movies"
puts "======"

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies = Movie.all
for movie in movies
  title = movie["title"]
  year_released = movie["year_released"]
  rated = movie["rated"]
  studio = movie["studio"]

  puts "#{title} #{year_released} #{rated} #{studio}"
end 

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

roles = Role.all
for role in roles
  title = movie["title"]
  name = actor["name"]
  character_name = role["character_name"]

  puts "#{title} #{name} #{character_name}"
end 


