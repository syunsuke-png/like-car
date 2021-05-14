class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :text, presence: true
end
