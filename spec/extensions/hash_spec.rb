
require 'spec_helper'

describe Hash do
  let(:inner) { { a: 3, b: 4 } }
  let(:data) { { a: 1, b: 2, c: inner } }
  let(:copy) { data.__deep_copy__ }

  it "should return an equal hash" do
    data.should eq(copy)
  end

  it "should return a copy" do
    data.should_not equal(copy)
  end

  it "should return an equal hash" do
    copy[:c].should eq(inner)
    copy[:c].should_not equal(inner)
  end
end
