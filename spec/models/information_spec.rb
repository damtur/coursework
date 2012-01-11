# == Schema Information
#
# Table name: information
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  picture    :string(255)
#

require 'spec_helper'

describe Information do
  before(:each) do
    @attr = {
      :title => "Sample title",
      :content => "Sample content",
      :picture => "path/to/picture"
    }
  end


  it "should create a new instance given valid attributes" do
    Information.create!(@attr)
  end

	it "should require a title" do
    no_title_information = Information.new(@attr.merge(:title => ""))
    no_title_information.should_not be_valid
  end

 	it "should reject title that are too long" do
    long_title = "a" * 300
    long_title_information = Information.new(@attr.merge(:title => long_title))
    long_title_information.should_not be_valid
  end


end
