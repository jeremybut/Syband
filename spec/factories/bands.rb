# == Schema Information
#
# Table name: bands
#
#  id         :integer          not null, primary key
#  picture_id :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :band do
    picture nil
  end
end
