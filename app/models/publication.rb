


# == Schema Information
#
# Table name: publications
#
#  id         :integer         not null, primary key
#  title      :string(255)
#	 short_title :string(255)
#  content    :text
#  image_path :string(255) 
#  price			:string(255)
#  created_at :datetime
#  updated_at :datetime
#



class Publication < ActiveRecord::Base
	attr_accessible :title, :content, :image_path, :price, :short_title
  validates :title, :presence => true,
	    :length   => { :maximum => 255 }
  validates :content, :presence => true
  validates :price, :presence => true
  validates :short_title, :presence => true,
	    :length   => { :maximum => 255 }

end
