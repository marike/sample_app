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
  
  # Return microposts form the users being followed by the given user.
  scope :from_users_followed_by, lambda {|user| followed_by(user)}
  
  def self.from_users_followed_by(user)
    followed_ids = user.following.map(&:id).join(", ")
    where("user_id IN (#{followed_ids}) OR user_id = ?", user)
  end
  
end
