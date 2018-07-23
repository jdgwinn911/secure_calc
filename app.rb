require 'sinatra'
require_relative 'calculator.rb'

enable :sessions

get '/' do
  erb :login
end

post '/login' do
  user = params[:user_name]
  pass = params[:password]
  user_name = ENV['username'].split(' ')
  password = ENV['password'].split(' ')
   session[:uname] = user_name
   session[:pwd] = password



  if user == user_name.include(0) && pass == password.include(0)
    redirect '/calculator'
  elsif user == user_name.include(1) && pass == password.include(1)
    redirect '/calculator'
  elsif user == user_name.include(2) && pass == password.include(2)
    redirect '/calculator'
  elsif user != user_name.include(0) && user != user_name.include(1) && user != user_name.include(2) && pass != password.include(0) && pass != password.include(1) && pass != password.include(2)
    error = "invalid username or password"
    puts error
  end
    



  
end

get '/calculator' do
  erb :calculator


   
end
