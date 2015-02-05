require 'spec_helper'

describe "north command" do

  let(:robot) {Robot.new(1,1,"NORTH")}

  it "returns new direction" do
    expect(NorthCommand.new.execute(robot)).to eq("NORTH")
  end
  
end