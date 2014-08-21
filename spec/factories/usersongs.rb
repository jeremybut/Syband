# == Schema Information
#
# Table name: usersongs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  song_id    :integer
#  status_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usersong do
    user nil
    song nil
    status nil
  end
end
