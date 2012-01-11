require 'spec_helper'


# == Schema Information
#
# Table name: publications
#
#  id         :integer         not null, primary key
#  title      :string(255)
#	 short_title :string(255)
#  content    :string(1255)
#  image_path :string 
#  price			:string(255)
#  created_at :datetime
#  updated_at :datetime
#


describe Publication do
   before(:each) do
    @attr = {
      :title => "Sample title",
      :short_title => "ShortTitle",
      :content => "Sample content",
      :price => "4.35",
      :image_path => "image/path.jpg"
    }
  end


  it "should create a new instance given valid attributes" do
    Publication.create!(@attr)
  end

	it "should require a title" do
    no_title_publication = Publication.new(@attr.merge(:title => ""))
    no_title_publication.should_not be_valid
  end

 	it "should reject title that are too long" do
    long_title = "a" * 300
    long_title_publication = Publication.new(@attr.merge(:title => long_title))
    long_title_publication.should_not be_valid
  end

	it "should require a short_title" do
    no_short_title_publication = Publication.new(@attr.merge(:short_title => ""))
    no_short_title_publication.should_not be_valid
  end

 	it "should reject short_title that are too long" do
    long_short_title = "a" * 300
    long_short_title_publication = Publication.new(@attr.merge(:short_title => long_short_title))
    long_short_title_publication.should_not be_valid
  end

	it "should require a price" do
    no_price_publication = Publication.new(@attr.merge(:price => ""))
    no_price_publication.should_not be_valid
  end

	it "should require a content" do
    no_content_publication = Publication.new(@attr.merge(:content => ""))
    no_content_publication.should_not be_valid
  end

end
