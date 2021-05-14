class Car < ApplicationRecord

  with_options presence: true do
    validates :car_name
    validates :text
  end

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
end
