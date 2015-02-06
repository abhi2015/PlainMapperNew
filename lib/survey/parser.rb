#parses the input and returns a command object
class Parser

  def parse(command_string,robot)

    if command_string == "LEFT" && robot.getDirxn == "EAST"
      command = NorthCommand.new
    elsif command_string == "LEFT"  && robot.getDirxn == "NORTH"
      command = WestCommand.new
    elsif command_string == "LEFT" && robot.getDirxn == "WEST"
      command = SouthCommand.new
    elsif command_string == "LEFT"  && robot.getDirxn == "SOUTH"
      command = EastCommand.new
    elsif command_string == "RIGHT" && robot.getDirxn == "EAST"
      command = SouthCommand.new
    elsif command_string == "RIGHT"  && robot.getDirxn == "NORTH"
      command = EastCommand.new
    elsif command_string == "RIGHT" && robot.getDirxn == "WEST"
      command = NorthCommand.new
    elsif command_string == "RIGHT"  && robot.getDirxn == "SOUTH"
      command = WestCommand.new
    elsif command_string == "MOVE" && robot.getDirxn == "EAST"
      command = MoveCommand.new
    end
    return command
  end

end
