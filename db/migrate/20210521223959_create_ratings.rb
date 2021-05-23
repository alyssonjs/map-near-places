class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.float :rate
      t.datetime :deleted_at
      
      t.timestamps
    end
  end
end
