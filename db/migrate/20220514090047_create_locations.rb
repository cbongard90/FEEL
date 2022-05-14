class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :box, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
