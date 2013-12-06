require '../stack'
require './spec_helper'


describe Stack do
  let(:stack) {Stack.new}

  it "should return the size of the stack" do
    stack.size.should == stack.store.size
  end

end