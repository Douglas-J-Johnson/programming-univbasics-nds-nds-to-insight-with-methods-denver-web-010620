$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  for i in 0...director_data[:movies].length
  end
  pp director_data

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  directorName = ""
  worldwide_total_of_grosses = 0

  for i in 0...nds.length
    directorName = nds[i][:name]
    worldwide_total_of_grosses = 0

    for j in 0...nds[i][:movies].length
      worldwide_total_of_grosses = worldwide_total_of_grosses + nds[i][:movies][j][:worldwide_gross]
    end

    result[directorName] = worldwide_total_of_grosses
  end

  return result
end
