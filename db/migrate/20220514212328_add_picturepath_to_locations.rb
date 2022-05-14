class AddPicturepathToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :picture_path, :string
  end
end
