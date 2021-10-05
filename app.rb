require "bundler/setup"
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret message: x79asdfh11"
end

get '/random-cats' do
  @name = ["Amigo", "Misty", "Almond"][rand(3)] #could go %w(Amigo Misty Almond)
  erb(:index)
end

get '/named-cats' do
  puts params
  @name = params[:name] 
  @age = params[:age]
   #could go %w(Amigo Misty Almond)
  erb(:index)
end
