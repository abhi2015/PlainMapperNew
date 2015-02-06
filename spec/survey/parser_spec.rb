require 'spec_helper'

describe "Parser" do

  let(:parser) {Parser.new}
  let(:robot) {Robot.new(1,1,"NORTH")}
  let(:robot1) {Robot.new(1,1,"SOUTH")}

  it "checks for command string" do
    expect(parser.parse("LEFT",robot).class).to eq(WestCommand) 
  end
  it "checks for command string" do
    expect(parser.parse("RIGHT",robot).class).to eq(EastCommand) 
  end
    it "checks for command string" do
    expect(parser.parse("LEFT",robot1).class).to eq(EastCommand) 
  end
  it "checks for command string" do
    expect(parser.parse("RIGHT",robot1).class).to eq(WestCommand) 
  end

end
