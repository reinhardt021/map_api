# Homepage (Root path)
get '/' do
  erb :index
end

get '/contacts' do
  contacts = Contact.includes(:numbers).as_json(include: :numbers)
  json contacts
end

get '/contacts/find' do
  results = { result: false }
  search = params[:search].strip
  contacts = Contact.search(search)

  if contacts.any?
    results[:result] = true
    results[:contacts] = contacts
  end 

  json results
end

post '/contacts' do
  results = { result: false }
  firstname = params[:firstName]
  lastname = params[:lastName]
  email = params[:email]

  contact = Contact.new(
    firstname: firstname,
    lastname: lastname,
    email: email 
  )

  if contact.save
    results[:result] = true
    results[:contact] = contact
  end

  json results
end

delete '/contacts/delete' do
  results = { result: false }
  contact = Contact.find(params[:contact_id])
  if contact
    contact.destroy
    results[:result] = true
  end
  
  json results
end


