require 'spec_helper'
describe 'launch' do


  it "test the launch" do
    
    parser = Parser.new
    allow(Parser).to receive(:new) { parser}
    allow(Kernel).to receive(:gets) { "add 5" }

    app = Application.new
    app.start_test
    
  end

end 