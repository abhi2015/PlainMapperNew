require 'spec_helper'

describe "south command" do

  let(:robot) {Robot.new(1,1,"NORTH")}

  it "returns new direction" do
    expect(SouthCommand.new.execute(robot)).to eq("SOUTH")
  end
  
end