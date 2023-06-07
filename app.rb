# $LOAD_PATH.unshift(File.expand_path('lib', __dir__))
require 'bundler/setup'
require 'sinatra'
require 'sqlite3'
require 'sinatra/activerecord'


# Set up the database connection
set :database, { adapter: "sqlite3", database: "database.db" }
class User < ActiveRecord::Base
end

# Create the 'users' table if it does not exist
unless User.table_exists?
    ActiveRecord::Schema.define do
      create_table :users do |t|
        t.string :name
        t.timestamps null: false
      end
    end
  end




# Define your routes and application logic
get '/' do
    @users = User.all
    erb :index
  end
  
  post '/users' do
    name = params[:name]
    User.create(name: name)
    redirect '/'
  end