class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.text :comment
      t.datetime :deleted_at
      
      t.timestamps
    end
  end
end
