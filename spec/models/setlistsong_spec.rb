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

require 'spec_helper'

describe Setlistsong do
  pending "add some examples to (or delete) #{__FILE__}"
end
