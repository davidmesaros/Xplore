# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  venuename  :string(255)
#  avatar     :string(255)
#  user_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Venue < ActiveRecord::Base
  has_many :photos
  belongs_to :user
  
end
