# == Schema Information
#
# Table name: monsters
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  status     :string
#  alive      :boolean          default("true"), not null
#  attack     :integer          not null
#  xp_awarded :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class MonsterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
