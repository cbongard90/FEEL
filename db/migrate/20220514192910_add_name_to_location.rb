class AddNameToLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :name, :string
  end
end
