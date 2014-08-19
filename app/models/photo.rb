# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image      :string(255)
#  user_id    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Photo < ActiveRecord::Base
  belongs_to :user #, dependent: :destroy
  belongs_to :venue
  mount_uploader :image, ImageUploader
end
