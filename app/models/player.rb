# == Schema Information
#
# Table name: players
#
#  id              :bigint           not null, primary key
#  name            :string           not null
#  gender          :string           not null
#  character_class :string           not null
#  status          :string
#  alignment       :string
#  background      :string
#  attack          :integer          not null
#  experience      :integer          default("1"), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Player < ApplicationRecord
  has_one :stat
end
