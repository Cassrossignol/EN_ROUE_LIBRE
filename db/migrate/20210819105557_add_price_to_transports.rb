class AddPriceToTransports < ActiveRecord::Migration[6.0]
  def change
    add_column :transports, :price, :string
  end
end
