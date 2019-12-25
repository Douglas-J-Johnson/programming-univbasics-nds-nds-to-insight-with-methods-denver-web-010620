$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data
  total_of_worldwide_grosses = 0

  for i in 0...director_data[:movies].length
    total_of_worldwide_grosses = total_of_worldwide_grosses + director_data[:movies][i][:worldwide_gross]
  end

  return total_of_worldwide_grosses
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_data = {}
  directorName = ""
  total_of_worldwide_grosses = 0

  for i in 0...nds.length
    director_data = nds[i]
    directorName = nds[i][:name]
    #total_of_worldwide_grosses = 0
    total_of_worldwide_grosses = gross_for_director(director_data)

    #for j in 0...nds[i][:movies].length
    #  total_of_worldwide_grosses = total_of_worldwide_grosses + nds[i][:movies][j][:worldwide_gross]
    #end

    result[directorName] = total_of_worldwide_grosses
  end

  return result
end
