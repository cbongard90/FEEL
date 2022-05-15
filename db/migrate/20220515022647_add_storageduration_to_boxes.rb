class AddStoragedurationToBoxes < ActiveRecord::Migration[6.1]
  def change
    add_column :boxes, :storage_duration, :string
    add_column :boxes, :start_date, :date
    add_column :boxes, :price, :integer
  end
end
