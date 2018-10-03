Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end

  field :pet, Types::PetType do
    description 'Retrieve a pet post by id'
  
    argument :id, !types.ID, 'The ID of the pet to retrieve'
  
    resolve ->(obj, args, ctx) {
      Pet.find(args[:id])
    }
  end
  
  field :pets, types[Types::PetType] do
    description 'Retrieve a list of all pets'
  
    resolve ->(obj, args, ctx) {
      Pet.all
    }
  end
  
  # ./graphql/types/query_type.rb
  # we update from field to connection and define new return type of
  # Types::PetType.connection_type
  connection :pets, Types::PetType.connection_type do
    resolve -> (obj, args, ctx) {
      Pet.all
    }
  end
end
