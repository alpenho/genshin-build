require 'graphql'
require_relative 'base/enum'

class Types::StatusTypeEnum < Types::Base::Enum
  value 'health_point'
  value 'attack'
  value 'defense'
  value 'elemental_mastery'
  value 'energy_recharge'
  value 'physical_damage_bonus'
  value 'critical_rate'
  value 'critical_damage'
  value 'healing_bonus'
  value 'geo_damage_bonus'
  value 'pyro_damage_bonus'
  value 'electro_damage_bonus'
  value 'anemo_damage_bonus'
  value 'cryo_damage_bonus'
  value 'dendro_damage_bonus'
  value 'hydro_damage_bonus'
end
