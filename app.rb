require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/ping_pong')
require('pry')


get('/home') do
  erb(:home)
end

get('/ping_pong') do
  @number = params.fetch('number')
  erb(:output)
end
