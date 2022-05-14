class CreateReceivers < ActiveRecord::Migration[6.1]
  def change
    create_table :receivers do |t|
      t.boolean :is_private
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
