
require 'spec_helper'

describe Hash do
  let(:inner) { [3, 4] }
  let(:data) { [ 1, 2, inner ] }
  let(:copy) { data.__deep_copy__ }

  it "should return an equal hash" do
    data.should eq(copy)
  end

  it "should return a copy" do
    data.should_not equal(copy)
  end

  it "should return an equal hash" do
    copy[2].should eq(inner)
    copy[2].should_not equal(inner)
  end
end
