require('sinatra')
require('sinatra/reloader')
require('./lib/word_replace')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/form') do
  @number = params.fetch('words').word_replace()
end
