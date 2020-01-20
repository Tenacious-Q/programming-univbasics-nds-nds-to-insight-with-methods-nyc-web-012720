$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #total = directors_totals(directors_database) - returns hash {:name => gross, etc... }

  #is this abstract enough?
  #could assign director_name = "Steven Spielberg"
  #and use directors_totals(directors_database)["director_name"]
  #not sure if iterating through would work since it is a hash
  #
  directors_totals(directors_database)["Stephen Spielberg"]
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

  result = {}
  director_index = 0
  while director_index < nds.length do
    movie_index = 0
    total = 0
    while movie_index < nds[director_index][:movies].count do
      total += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  result[nds[director_index][:name]] = total
  movie_index += 1
  director_index += 1
  end
  result
end


puts directors_totals(directors_database)

puts directors_totals(directors_database)["Stephen Spielberg"]


## FOR SCRATCH WORK
#directors_totals method
=begin
result = {}
director_index = 0
while director_index < nds.length do
  movie_index = 0
  total = 0
  while movie_index < nds[director_index][:movies].count do
    total += nds[director_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
result[nds[director_index][:name]] = total
movie_index += 1
director_index += 1
end
 puts result
=end
