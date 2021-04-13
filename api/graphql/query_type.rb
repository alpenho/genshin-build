require 'graphql'
require_relative 'types/artifact'
require_relative 'types/weapon'
require_relative 'types/character'

class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  field :artifacts, [Types::Artifact], null: false do
    description 'Get all artifact of the system'
  end

  field :weapons, [Types::Weapon], null: false do
    description 'Get all weapon of the system'
  end

  field :characters, [Types::Character], null: false do
    description 'Get all character of the system'
  end

  def artifacts
    Artifact.all
  end

  def weapons
    Weapon.all
  end

  def characters
    Character.all
  end
end
