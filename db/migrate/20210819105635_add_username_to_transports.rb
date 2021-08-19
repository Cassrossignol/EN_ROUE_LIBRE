class AddUsernameToTransports < ActiveRecord::Migration[6.0]
  def change
    add_column :transports, :username, :string
  end
end
