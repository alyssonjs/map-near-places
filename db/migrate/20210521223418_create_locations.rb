class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :postal_code
      t.string :number
      t.string :address
      t.string :country
      t.string :country_code
      t.string :state
      t.string :state_code
      t.float :latitude
      t.float :longitude
      t.text :coordinates, array: true, default: []
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
