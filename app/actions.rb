# Homepage (Root path)
get '/' do
  erb :index
end

get '/exercise1' do
  erb :'exercise1'
end

get '/exercise2' do
  erb :'exercise2'
end

get '/mashup' do
  erb :'mashup'
end