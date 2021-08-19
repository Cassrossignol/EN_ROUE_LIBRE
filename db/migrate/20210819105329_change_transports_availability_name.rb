class ChangeTransportsAvailabilityName < ActiveRecord::Migration[6.0]
  def change
    rename_column :reservations, :availability, :status
  end
end
