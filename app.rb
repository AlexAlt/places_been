require('sinatra')
require('sinatra/reloader')
require('./lib/places_been')
also_reload('./lib/**/*.rb')

get('/') do
  @places = Places.all()
  erb(:index)
end

post('/added_places') do
  location = params.fetch('location')
  added_places = Places.new(location)
  added_places.save()
  @places = Places.all()
  erb(:index)
end

post('/remove_places') do
  @places = Places.all()
  location = params.fetch('remove_loc')
  Places.find_delete(location)
  erb(:index)
end
