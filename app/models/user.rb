# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  avatar          :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :photos, :dependent => :destroy 
  has_many :venues
  validates :avatar, :presence => true
  validates :username, :presence => true, :length => { :minimum => 3 }
  mount_uploader :avatar, AvatarUploader
end
