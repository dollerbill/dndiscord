# == Schema Information
#
# Table name: stats
#
#  id           :bigint           not null, primary key
#  level        :integer          not null
#  hp           :integer          not null
#  max_hp       :integer          not null
#  strength     :integer          not null
#  dexterity    :integer          not null
#  constitution :integer          not null
#  intelligence :integer          not null
#  wisdom       :integer          not null
#  charisma     :integer          not null
#  player_id    :bigint
#  monster_id   :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class StatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
