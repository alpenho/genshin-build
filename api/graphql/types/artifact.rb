require 'graphql'
require_relative 'base/object'
require_relative 'artifact_type_enum'

class Types::Artifact < Types::Base::Object
  description 'Resembles a Artifact Object Type'

  field :id, ID, null: false
  field :name, String, null: false
  field :star, Integer, null: false
  field :artifact_type, Types::ArtifactTypeEnum, null: false
end