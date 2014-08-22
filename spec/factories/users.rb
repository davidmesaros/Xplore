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

FactoryGirl.define do
  factory :user do
    username  "Example Example"
    password    "foobar1234"
    password_confirmation "foobar1234"
  end
end