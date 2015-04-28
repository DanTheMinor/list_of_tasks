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
  @check = params.fetch('delete task')
  if @check.!=""
    @length = Task.display_all().length
    Task.delete(@check)
    @length_after = Task.display_all().length
  else
    new_task = Task.new(description)
    new_task.save()
  end
  erb(:success)
end
