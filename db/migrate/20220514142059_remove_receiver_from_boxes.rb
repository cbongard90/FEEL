class RemoveReceiverFromBoxes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :boxes, :receiver, null: false, foreign_key: true
  end
end
