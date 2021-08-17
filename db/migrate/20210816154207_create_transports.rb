class CreateTransports < ActiveRecord::Migration[6.0]
  def change
    create_table :transports do |t|
      t.string :type
      t.string :description
      t.string :picture
      t.string :localization
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
