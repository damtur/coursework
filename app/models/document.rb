# == Schema Information
#
# Table name: documents
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  path    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Document < ActiveRecord::Base
	attr_accessible :title, :path
  validates :title, :presence => true,
	    :length   => { :maximum => 255 }
  validates :path, :presence => true

end
