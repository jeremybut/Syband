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

require 'spec_helper'

describe Membership do
  pending "add some examples to (or delete) #{__FILE__}"
end
