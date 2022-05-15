class Box < ApplicationRecord
  belongs_to :user
  belongs_to :location
  validates :user_id, presence: true
  has_many_attached :documents
end
