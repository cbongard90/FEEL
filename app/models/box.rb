class Box < ApplicationRecord
  belongs_to :user
  belongs_to :receiver
  validates :user_id, presence: true
end
