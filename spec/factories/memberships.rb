# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  band_id    :integer
#  user_asked :boolean
#  band_asked :boolean
#  is_admin   :boolean
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :membership do
    user nil
    band nil
    user_asked false
    band_asked false
    is_admin false
  end
end
