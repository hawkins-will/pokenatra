require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection.rb'

# #Load specific routes / controllers
# require_relative 'controllers/artist.rb'
# require_relative 'controllers/song.rb'

# Load models
require_relative 'models/pokemon.rb'

get "/" do
  @pokemons = Pokemon.all
  erb :index
end
