class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :transports, :type, :transport_type
  end
end
