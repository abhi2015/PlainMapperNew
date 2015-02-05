require 'spec_helper'

describe "east command" do

  let(:robot) {Robot.new(1,1,"NORTH")}

  it "returns east direction" do
    expect(EastCommand.new.execute(robot)).to eq("EAST")
  end
  
end