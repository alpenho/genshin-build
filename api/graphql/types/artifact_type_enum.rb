require 'graphql'
require_relative 'base/enum'

class Types::ArtifactTypeEnum < Types::Base::Enum
  value 'flower'
  value 'plume'
  value 'sands'
  value 'goblet'
  value 'circlet'
end