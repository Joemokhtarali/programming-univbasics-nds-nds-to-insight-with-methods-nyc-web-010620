$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# binding.pry

def gross_for_director(director_data)

  movies = director_data[:movies]
  gross = 0 
  i = 0 
  while i < movies.length do 
    gross += movies[i][:worldwide_gross]
  i += 1 
end 
return gross 

end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }


def directors_totals(nds)
  # binding.pry
  result = {}
  total = 0
  
  i = 0
  while i < nds.length do 
    name = nds[i][:name]
    movies = nds[i][:movies]
    result[name] = 0
    j = 0 
    while j < movies.length do 
    total = movies[j][:worldwide_gross]
    result[name] += total 
    j += 1 
  end 
    i += 1  
  end 
  
  return result
end


  