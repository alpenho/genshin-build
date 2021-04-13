require 'graphql'
require_relative 'base/enum'

class Types::CharacterElementEnum < Types::Base::Enum
  value 'geo'
  value 'pyro'
  value 'electro'
  value 'anemo'
  value 'cryo'
  value 'dendro'
  value 'hydro'
end
