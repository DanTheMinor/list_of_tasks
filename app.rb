require('sinatra')
require('sinatra/reloader')
require('./lib/task')
also_reload('lib/**/*.rb')

get('/') do
  @tasks = Task.display_all()
  erb(:index)
end

post('/success') do
  description = params.fetch('task')
  new_task = Task.new(description)
  new_task.save()
  erb(:success)
end
