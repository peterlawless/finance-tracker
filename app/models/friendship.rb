class Friendship < ApplicationRecord
  belongs_to :user
  # This allows us to specify that a "friend" is actually a User model,
  # since there is no "Friend" model.  In this case, the association represents
  # a many-to-many association between objects in the same table.
  belongs_to :friend, :class_name => 'User'
end
