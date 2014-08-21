# == Schema Information
#
# Table name: bandsongs
#
#  id         :integer          not null, primary key
#  band_id    :integer
#  song_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bandsong do
    band nil
    song nil
  end
end
