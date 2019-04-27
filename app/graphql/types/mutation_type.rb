module Types
  class MutationType < Types::BaseObject
    field :signin_user, mutation: Mutations::SignInUser
    field :create_todo, mutation: Mutations::CreateTodo
  end
end
