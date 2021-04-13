require 'graphql'
require_relative 'base/object'
require_relative 'status_type_enum'
require_relative 'character_element_enum'

class Types::Character < Types::Base::Object
  description 'Resembles a Character Object Type'

  field :id, ID, null: false
  field :level, Integer, null: false
  field :ascension, Boolean, null: false
  field :name, String, null: false
  field :element, Types::CharacterElementEnum, null: false
  field :health_point, Integer, null: false
  field :attack, Integer, null: false
  field :defense, Integer, null: false
  field :ascension_bonus_type, Types::StatusTypeEnum, null: false
  field :value, Float, null: false
  field :percentage, Boolean, null: false
  field :critical_rate, Float, null: false
  field :critical_damage, Float, null: false
end
