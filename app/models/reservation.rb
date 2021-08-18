class Reservation < ApplicationRecord
  belongs_to :transport
  belongs_to :user

  validate :reservation_cannot_be_in_the_past

  def reservation_cannot_be_in_the_past
    if reservation_date.present? && reservation_date < Date.today
      errors.add(:reservation, "Ne peut pas être un jour deja passé!")
    end
  end
end
