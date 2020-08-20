class Product < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: {
      name: 'A',
      description: 'B',
      city: 'C'
    },
    using: {
      tsearch: { prefix: true }
    }
end
