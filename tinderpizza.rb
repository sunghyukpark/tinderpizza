require 'sinatra'
require "sinatra/activerecord"

set :database, {adapter: "sqlite3", database: "db/tinderpizza.sqlite3"}

autoload :Pizza, settings.root + '/models/pizza'

get '/' do
  @pizzas = ['pepperoni','margherita','mushroom and garlic']
  erb :home
end

