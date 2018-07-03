require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/maze')
require('pry')

get('/') do
  erb(:input)
end

get('/room1') do
  room = Maze.new
  erb(:room1)
end

get('/room2') do
  room = Maze.new
  user_input = params.key("click")
  binding.pry
  if room.maze_runner(user_input)
    erb(:room2)
  else
    erb(:dead_end)
  end
end

get('/back') do
  redirect back
end

get('/room3') do
  room = Maze.new
  user_input = params.key("click")
  if room.maze_runner(user_input)
    erb(:room3)
  else
    erb(:dead_end)
  end
end
get('/room4') do
  room = Maze.new
  user_input = params.key("click")
  if room.maze_runner(user_input)
    erb(:room4)
  else
    erb(:dead_end)
  end
end
