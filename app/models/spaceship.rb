class Spaceship < ApplicationRecord
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  has_many :availabilities, dependent: :destroy
  include PgSearch::Model
  attr_accessor :is_available

  pg_search_scope :search_by_details,
                  against: [:name, :capacity, :description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
