require 'sinatra'

get '/' do
  erb :index
end

get '/fruit' do
  @fruits = ["Bananas", "Apples", "Raspberries", "Oranges", "Pineapples", "Mangoes"]
  erb :fruits_view
end

get '/oldest_dogs' do
  # for more info http://en.wikipedia.org/wiki/List_of_oldest_dogs
  @dogs = ["Max", "Bella", "Bluey", "Lady", "Minius", "Bramble", "Adjutant", "Butch"]
  erb :oldest_dogs_view
end


get '/countries' do
  @countries = list_of_countries
  erb :countries_view
end

get '/simpsons' do
  @simpsons = list_of_simpsons
  erb :simpsons_view
end

def list_of_countries
  [ 
    ["UK", "London"],
    ["France", "Paris"],
    ["Spain", "Madrid"],
    ["Norway", "Oslo"],
    ["Italy", "Rome"],
    ["Germany", "Berlin"]
  ]
end

def list_of_simpsons
  [
    { :name => "Homer", :age => 38, :gender => "M", :catchphrase => "D'oh!", :pic => "http://simpsons.wikia.com/wiki/Homer_Simpson?file=Homer_Simpson.png"},
    { :name => "Marge", :age => 34, :gender =>"F" , :catchphrase => "Hmm...", :pic =>"http://images.wikia.com/simpsons/images/0/0b/Marge_Simpson.png"},
    { :name => "Bart", :age => 10, :gender => "M", :catchphrase =>  "Eat My Shorts!", :pic =>"http://images.wikia.com/simpsons/images/6/65/Bart_Simpson.png"},
    { :name => "Lisa", :age =>8, :gender =>"F", :catchphrase => "Trust in yourself and you can achieve anything.", :pic =>"http://images.wikia.com/simpsons/images/5/57/Lisa_Simpson2.png"},
    { :name => "Maggie", :age => 1, :gender => "F", :catchphrase =>  "", :pic => "http://images.wikia.com/simpsons/images/8/89/Maggie.png"}
  ]
end
