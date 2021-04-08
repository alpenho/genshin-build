require 'graphql'
require_relative 'base/enum'

class Types::WeaponTypeEnum < Types::Base::Enum
  value 'sword'
  value 'bow'
  value 'polearm'
  value 'claymore'
  value 'catalyst'
end