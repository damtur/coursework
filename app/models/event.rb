# == Schema Information
#
# Table name: events
#
#  id         :integer         not null, primary key
#  content    		:string
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
	attr_accessible :content, :path
  validates :content, :presence => true
end

