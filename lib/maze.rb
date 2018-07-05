class Maze
  @@current_room = ""

  def initialize()
  ## create rooms, add them to @path
  ## create @path


  end

end

class Room < Maze
  attr_reader(:pos, :accessible_rooms)

  def initialize(attributes) ## needs to take pos (A1), accessible_rooms ({'A2' => 'E', 'B1' => 'N'})
    @pos = attributes.fetch(:pos)
    @accessible_rooms = attributes.fetch(:accessible_rooms)
  end

  def set_current_room
  end

end
