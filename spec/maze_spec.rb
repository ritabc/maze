require('pry')
require('rspec')
require('maze')

describe ('Maze#maze_runner') do
  it "User will go forward to start the maze" do
    room = Maze.new
    expect(room.maze_runner('left')).to(eq(true))
  end
end
