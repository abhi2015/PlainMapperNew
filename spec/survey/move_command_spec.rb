require 'spec_helper'

describe "north command" do

  let(:robot) {Robot.new(1,1,"NORTH")}

  it "returns new direction" do
    robot.north
    expect(MoveCommand.new.execute(robot)).to eq([1,2])
  end
  
end