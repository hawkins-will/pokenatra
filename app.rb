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
  @pokemon = Pokemon.all
  erb :index
end

get "/pokemon/new" do
  erb :"new"
end

post "/pokemon" do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get "/pokemon/:id" do
  @pokemon = Pokemon.find(params[:id])
  erb :pokemon
end
