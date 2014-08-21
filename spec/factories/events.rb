# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  setlist_id :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    band nil
    setlist nil
  end
end
