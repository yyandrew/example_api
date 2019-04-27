module Types
  class QueryType < Types::BaseObject
    field :Users, [UserType], null: false

    def users
      User.includes(:todos).all
    end
  end
end
