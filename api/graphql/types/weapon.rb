require 'graphql'
require_relative 'base/object'
require_relative 'weapon_type_enum'

class Types::Weapon < Types::Base::Object
  description 'Resembles a Weapon Object Type'

  field :id, ID, null: false
  field :name, String, null: false
  field :star, Integer, null: false
  field :weapon_type, Types::WeaponTypeEnum, null: false
end