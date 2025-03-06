class Availability < ApplicationRecord
  belongs_to :spaceship

  validates :start_date, :end_date, presence: true
  validate :start_date_before_end_date

  private

  def start_date_before_end_date
    if start_date >= end_date
      errors.add(:start_date, "must be before end date")
    end
  end
end

