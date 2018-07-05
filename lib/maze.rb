class Maze
  attr_accessor(:path)
  @@current_room = ""

  def initialize
    @path = []
    o0 = Room.new({:pos => 'start', :accessible_rooms => {'A1' => 'forward'}})
    a1 = Room.new({:pos => 'A1', :accessible_rooms => {'A2' => 'E', 'B1' => 'N'}})
    a2 = Room.new({:pos => 'A2', :accessible_rooms => {'B2' => 'N', 'A3' => 'E'}})
    b2 = Room.new({:pos => 'B2', :accessible_rooms => {'B3' => 'E'}})
    b3 = Room.new({:pos => 'B3', :accessible_rooms => {'B4' => 'E'}})
    b4 = Room.new({:pos => 'B4', :accessible_rooms => {'B5' => 'E', 'A4' => 'S'}})
    b5 = Room.new({:pos => 'B5', :accessible_rooms => {'B6' => 'E', 'A5' => 'S'}})
    b6 = Room.new({:pos => 'B6', :accessible_rooms => {'C6' => 'N', 'A6' => 'S'}})
    c6 = Room.new({:pos => 'C6', :accessible_rooms => {'D6' => 'N'}})
    d6 = Room.new({:pos => 'D6', :accessible_rooms => {'D5' => 'W', 'E6' => 'N'}})
    d5 = Room.new({:pos => 'D5', :accessible_rooms => {'C5' => 'S', 'E5' => 'N', 'D4' => 'W'}})
    c5 = Room.new({:pos => 'C5', :accessible_rooms => {'C4' => 'W'}})
    c4 = Room.new({:pos => 'C4', :accessible_rooms => {'C3' => 'W'}})
    c3 = Room.new({:pos => 'C3', :accessible_rooms => {'C2' => 'W', 'D3' => 'N'}})
    c2 = Room.new({:pos => 'C2', :accessible_rooms => {'C1' => 'W'}})
    c1 = Room.new({:pos => 'C1', :accessible_rooms => {'D1' => 'N'}})
    d1 = Room.new({:pos => 'D1', :accessible_rooms => {'E1' => 'N'}})
    e1 = Room.new({:pos => 'E1', :accessible_rooms => {'E2' => 'E', 'F1' => 'N'}})
    e2 = Room.new({:pos => 'E2', :accessible_rooms => {'E3' => 'E', 'D2' => 'S'}})
    e3 = Room.new({:pos => 'E3', :accessible_rooms => {'F3' => 'N', 'E4' => 'E'}})
    f3 = Room.new({:pos => 'F3', :accessible_rooms => {'F4' => 'E'}})
    f4 = Room.new({:pos => 'F4', :accessible_rooms => {'F5' => 'E'}})
    f5 = Room.new({:pos => 'F5', :accessible_rooms => {'F6' => 'E'}})
    z9 = Room.new({:pos => 'end', :accessible_rooms => {'end' => 'win!'}})
    @path.push(o0, a1, a2, b2, b3, b4, b5, b6, c6, d6, d5, c5, c4, c3, c2, c1, d1, e1, e2, e3, f3, f4, f5, z9)
  end

end

class Room < Maze
  attr_reader(:pos, :accessible_rooms)

  def initialize(attributes)
    @pos = attributes.fetch(:pos)
    @accessible_rooms = attributes.fetch(:accessible_rooms)
  end

  def set_current_room
    @@current_room = self.pos
  end

end
