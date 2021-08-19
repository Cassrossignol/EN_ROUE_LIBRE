class Transport < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  geocoded_by :localization
  after_validation :geocode, if: :will_save_change_to_localization?
  include PgSearch::Model
  pg_search_scope :search_by_transport_type_and_description,
    against: [:transport_type, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
