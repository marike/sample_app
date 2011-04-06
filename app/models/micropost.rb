# == Schema Information
# Schema version: 20110406160250
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime


class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  
  validates :user_id, :presence => true
  validates :content, :presence => true, :length => { :maximum => 140 }
  
  default_scope :order => 'microposts.created_at DESC'
  
end
