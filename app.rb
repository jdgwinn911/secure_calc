require 'sinatra'
require_relative 'calculator.rb'

enable :sessions

get '/' do
  erb :login
end

post '/calculator' do
   
end
