# == Schema Information
#
# Table name: setlistsongs
#
#  id         :integer          not null, primary key
#  setlist_id :integer
#  song_id    :integer
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :setlistsong do
    setlist nil
    song nil
    position 1
  end
end
