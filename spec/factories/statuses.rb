# == Schema Information
#
# Table name: statuses
#
#  id         :integer          not null, primary key
#  label      :string(255)
#  percentage :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :status do
    label "MyString"
    percentage 1
  end
end
