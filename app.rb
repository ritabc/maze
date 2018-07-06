require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/maze')
require('pry')

get('/') do
  game = Maze.new
  @game_path = game.path
  erb(:input)
end

post('/') do
  game = Maze.new
  @path_number = 0
  @game_path = game.path
  erb(:room)
end

post('/room/:pos') do
  game = Maze.new
  @path = game.path
  @path.each do |path_room|
    @path_room = path_room
    erb(:room)
  end
end

# ####
# get('/back') do
#   redirect back
# end
#
# get('/room3') do
#   room = Maze.new
#   user_input = params.key("click")
#   if room.maze_runner(user_input)
#     erb(:room3)
#   else
#     erb(:dead_end)
#   end
# end
