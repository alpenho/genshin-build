require 'graphql'
require_relative 'query_type'

class ApiSchema < GraphQL::Schema
  query QueryType
end