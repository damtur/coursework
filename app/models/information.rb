# == Schema Information
#
# Table name: information
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  picture    :string(255)
#



class Information < ActiveRecord::Base
	attr_accessible :title, :content, :picture
  validates :title, :presence => true,
	    :length   => { :maximum => 255 }
  validates :content, :presence => true
	validates :picture, :length => { :maximum => 255 }
end
