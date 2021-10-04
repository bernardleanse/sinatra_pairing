require "bundler/setup"
require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "Secret message: x79asdfh11"
end

get '/cats' do
  erb(:index)
end