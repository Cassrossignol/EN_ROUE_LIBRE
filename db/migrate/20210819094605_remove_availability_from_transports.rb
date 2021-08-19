class RemoveAvailabilityFromTransports < ActiveRecord::Migration[6.0]
  def change
    remove_column :transports, :availability
  end
end
