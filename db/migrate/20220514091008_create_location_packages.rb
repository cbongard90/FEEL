class CreateLocationPackages < ActiveRecord::Migration[6.1]
  def change
    create_table :location_packages do |t|
      t.references :location, null: false, foreign_key: true
      t.references :package, null: false, foreign_key: true

      t.timestamps
    end
  end
end
