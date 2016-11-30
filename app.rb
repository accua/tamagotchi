require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')

get('/') do
  Tamagotchi.new("Birdie", @food_level, @sleep_level, @activity_level)
  erb(:index)
end

get('/play') do

  erb(:index)
end
