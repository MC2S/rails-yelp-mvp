class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :phone_number, format: { with: /\A(0|\+33)[1-9]([-. ]?[0-9]{2}){4}\z/ }
end
