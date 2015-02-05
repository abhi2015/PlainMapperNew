require 'spec_helper'

describe "Robot" do

  let(:robot) {Robot.new(1,3,"NORTH")}

  it 'returns the direction' do
    expect(robot.getDirxn).to eq("NORTH")
  end

  it 'returns the coordinates'  do
    expect(robot.getCords).to eq([1,3])
  end

  it 'changes the direction to north' do
    expect(robot.north).to eq("NORTH")
  end

  it 'changes the direction to south' do
    expect(robot.south).to eq("SOUTH")
  end

  it 'changes the direction to east' do
    expect(robot.east).to eq("EAST")
  end

  it 'changes the direction to west' do
    expect(robot.west).to eq("WEST")
  end

  it 'moves the robot' do
    robot.north
    expect(robot.move).to eq([1,4])
  end

  describe "equality tests" do
    it 'checks the symmetricity' do
      expect([1,2]).to eq([1,2])
    end
  end
end
