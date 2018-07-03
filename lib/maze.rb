class Maze
  @@location = []
  @@location_index = 0
  attr_reader(:location_index, :location)

  def initialize
    @room1 = 'left'
    @room2 = 'right'
    @room3 = 'right'
    @room4 = 'path3'
    @room5 = 'Whatever the answer to the riddle is'
    @@location.push(@room1, @room2, @room3, @room4, @room5)
  end

  def maze_runner(direction)
    if direction == @@location[@@location_index]
      @@location_index += 1
      true
    else
      false
    end
  end
end
