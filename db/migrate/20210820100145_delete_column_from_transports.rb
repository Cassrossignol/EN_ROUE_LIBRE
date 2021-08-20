class DeleteColumnFromTransports < ActiveRecord::Migration[6.0]
  def change
    remove_column :transports, :username
  end
end
