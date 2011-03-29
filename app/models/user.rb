# == Schema Information
# Schema version: 20110327234205
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  attr_accessible :name, :email, :password, :password_confirmation
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  validates :email, :presence => true, 
                    :format => { :with => email_regex }
  validates :password, :presence => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 }
end
