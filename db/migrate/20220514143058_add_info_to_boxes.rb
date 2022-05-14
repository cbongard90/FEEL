class AddInfoToBoxes < ActiveRecord::Migration[6.1]
  def change
    add_column :boxes, :is_public, :boolean
    add_column :boxes, :receiver_name, :string
  end
end
