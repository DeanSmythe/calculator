require "sinatra"
require "sinatra/reloader" if development?


get '/welcome' do 
    erb(:calc_form)
end

post '/result' do
  p params

  @name = params[:name]
  @result = params[:number1].to_i + params[:number2].to_i
  erb(:results)
end