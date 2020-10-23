class Prototype < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, :catch_copy, :concept, :image, presence: true
end
