class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :phone_number, format: { with: /\A(0|\+33)[1-9]([-. ]?[0-9]{2}){4}\z/, message: "only allows letters" }
end
