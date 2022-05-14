class RemoveBoxIdFromLocation < ActiveRecord::Migration[6.1]
  def change
    remove_reference :locations, :box, null: false, foreign_key: true
  end
end
