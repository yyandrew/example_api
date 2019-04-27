module Mutations
  class CreateTodo < BaseMutation
    null true

    argument :title, String, required: true
    argument :completed, Boolean, required: false

    type Types::TodoType

    def resolve(title: nil, completed: false)
      Todo.create(
        title: title,
        completed: completed,
        user: context[:current_user]
      )
    end
  end
end
