module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    #field :first_name, String, null: true
    #field :last_name, String, null: true
    field :full_name, String, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false


    # {
    #   items {
    #     id
    #     title
    #     user {
    #       fullName   # note change in style!
    #       email
    #     }
    #   }
    # }
    def full_name
      # `object` references the user instance
      [object.first_name, object.last_name].compact.join(" ")
    end

  end
end
