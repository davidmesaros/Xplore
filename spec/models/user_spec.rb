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

# require 'spec_helper'
  
#   describe "user" do
#     let(:user) { FactoryGirl.create(:user) }
#     before { visit user_path(user) }

#     it { should have_content(user.username) }
    
#   end


# require 'rails_helper'

# RSpec.describe User, :type => :model do

 
#   describe 'user' do
#     # -- existence & uniqueness
#     it 'should have an username' do
#       user = FactoryGirl.create(:user)
#       user = user
#       expect(user.username).to eq username
#     end
#   end
# end




require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(create(:user)).to be_valid
  end

  # it "is invalid without name" do
  #   expect(build(:author, name: nil)).to \
  #   have(1).errors_on(:name)
  # end

  # it "is invalid without email" do
  #   expect(build(:author, email: nil)).to \
  #   have(1).errors_on(:email)
  # end

  # it "is invalid without password" do
  #   expect(build(:author, password: nil)).to \
  #   have(1).errors_on(:password)
  # end

  it { should have_many (:photos)}

end

