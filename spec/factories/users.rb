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
    username "davidmesaros"
    avatar "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgN-yvPVTyqCxqGdBQd9dt95q7eR8flDszd0HHkq8RcSx2qqLp.jpg"
    password    "foobar1234"
    password_confirmation "foobar1234"
  end
end