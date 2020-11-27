module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :items,
      [Types::ItemType], # arrray => returns array of Type
      null: false,
      description: "return list of items in the martian library"

    def items
      Item.preload(all
    end
  end
end
