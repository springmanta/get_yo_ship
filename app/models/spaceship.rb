class Spaceship < ApplicationRecord
  has_one_attached :photo
  include PgSearch::Model

  pg_search_scope :search_by_details,
                  against: [:name, :capacity, :description],
                  using: {
                    tsearch: { prefix: true }
                  }
end
