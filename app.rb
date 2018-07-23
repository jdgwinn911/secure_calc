require 'sinatra'
require_relative "calculator.rb"


enable :sessions

get '/' do
  erb :login, locals: {error: ""}
end

post '/login' do
  username = params[:username]
  password = params[:password]
  user_arr = ["Admin", "josh", "user"]
  pass_arr = ["Admin", "skippy", "password"]
  counter = 0
  user_arr.each do |name|
    if name == username && password[counter]
      redirect '/calculator'
    end
    counter = counter + 1
  end
  unless user_arr.include?(username)
    redirect '/error'
    # erb :error, locals: {error: "invalid username or password"}
  end
  unless pass_arr.include?(password)
    redirect '/error'
    # erb :error, locals: {error: "invalid username or password"}
  end
  error = "invalid username or password"

end
get '/error' do
  erb :error, locals: {error: "invalid username or password"}
end

post '/error' do
redirect '/login'
end

get '/calculator' do
  p session
  val1 = session[:val1] || ""
  val2 = session[:val2] || ""
  operation = session[:operation] || ""
  result = session[:result] || ""
  p session
   case operation
  when "add"
    operation = "+" 
  when "subtract"
   operation = "-"
  when "multiply"
    operation = "*"
  when "divide"
    operation = "/"
  end

  erb :calculator, locals:{result: result, val1: val1, val2: val2, operation: operation}
end

post '/calculator' do 
  session[:val1] = params[:calculatorbox1]
  session[:val2] = params[:calculatorbox2]
  session[:operation] = params[:math]


  session[:result] = work(session[:operation], params[:calculatorbox1], params[:calculatorbox2])
  redirect '/calculator'
end
