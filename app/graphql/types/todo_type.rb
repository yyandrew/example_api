module Types
  class TodoType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :completed, Boolean, null: true
    field :owner, UserType, null: true, method: :user
  end
end
