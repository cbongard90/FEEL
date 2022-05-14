class RemoveTypeToLocation < ActiveRecord::Migration[6.1]
  def change
    remove_column :locations, :type
  end
end
