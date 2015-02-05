require 'spec_helper'

describe "west command" do

  let(:robot) {Robot.new(1,1,"NORTH")}

  it "returns next move" do
    expect(WestCommand.new.execute(robot)).to eq("WEST")
  end
  
end