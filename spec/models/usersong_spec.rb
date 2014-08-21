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

require 'spec_helper'

describe Usersong do
  pending "add some examples to (or delete) #{__FILE__}"
end
