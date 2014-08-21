# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  artist     :string(255)
#  lyrics     :text
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Song do
  pending "add some examples to (or delete) #{__FILE__}"
end
