
require 'spec_helper'

describe Object do
  it "should respond to deep copy" do
    Object.new.should be_respond_to(:__deep_clone__)
  end
end
