class AddEnvironmentToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :environment, :string
  end
end
