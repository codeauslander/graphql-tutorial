GraphqlRailsAppSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
  # ./graphql/APP_NAME_schema.rb
  use GraphQL::Batch
end
