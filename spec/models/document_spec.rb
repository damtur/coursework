require 'spec_helper'

describe Document do

	before(:each) do
    @attr = {
      :path => "path/to/file.png",
      :title => "Sample title",
    }
  end


  it "should create a new instance given valid attributes" do
    Document.create!(@attr)
  end

	it "should require a title" do
    no_title_document = Document.new(@attr.merge(:title => ""))
    no_title_document.should_not be_valid
  end

 	it "should reject title that are too long" do
    long_title = "a" * 300
    long_title_document = Document.new(@attr.merge(:title => long_title))
    long_title_document.should_not be_valid
  end

	it "should require a path" do
    no_path_document = Document.new(@attr.merge(:path => ""))
    no_path_document.should_not be_valid
  end

end
