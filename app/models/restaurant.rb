class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"], allow_nil: false }
  validates :phone_number, format: { with: /\A(0|\+33)[1-9]([-. ]?[0-9]{2}){4}\z/, message: "only allows letters" }
end
