# Homepage (Root path)
get '/' do
  erb :index
end

get '/exercise2' do
  erb :'exercise2'
end
