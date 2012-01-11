require 'spec_helper'

describe Event do
	before(:each) do
    @attr = {
      :content => "Sample content"
    }
  end

  it "should create a new instance given valid attributes" do
    Event.create!(@attr)
  end

	it "should require a content" do
    no_content_event = Event.new(@attr.merge(:content => ""))
    no_content_event.should_not be_valid
  end

end
