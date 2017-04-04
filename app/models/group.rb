class Group < ApplicationRecord
  belongs_to :groups_users
  has_many :messages
end
