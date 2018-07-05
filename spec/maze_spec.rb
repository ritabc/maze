require('pry')
require('rspec')
require('maze')

describe ('Room#attr_readers') do

  it ("will create a room and add return the rooms positition") do
    my_room = Room.new({:pos => 'A1', :accessible_rooms => {'A2' => 'E', 'B1' => 'N'}})
    expect(my_room.pos).to(eq('A1'))
  end

  it("will return the rooms accessible_rooms") do
    my_room = Room.new({:pos => 'A1', :accessible_rooms => {'A2' => 'E', 'B1' => 'N'}})
    expect(my_room.accessible_rooms).to(eq({'A2' => 'E', 'B1' => 'N'}))
  end
end

describe ('Maze#attr_path') do
  it ('will create a new Maze and access the path using the path accessor') do
  my_maze = Maze.new
  expect(my_maze.path[1].accessible_rooms).to(eq({'A2' => 'E', 'B1' => 'N'}))
  end
end
