class CreateTimesheets < ActiveRecord::Migration[6.1]
  def change
    create_table :timesheets do |t|
      t.string :start_time
      t.string :end_time
      t.references :package, null: false, foreign_key: true
      t.integer :monthly_price
      t.integer :yearly_price
      t.integer :total_price

      t.timestamps
    end
  end
end
