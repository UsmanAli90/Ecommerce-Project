class RenameOderIdToOrderIdInPayments < ActiveRecord::Migration[7.2]
  def change
    remove_column :payments, :oder_id, :integer, if_exists: true
    add_column :payments, :order_id, :integer, null: false
    add_index :payments, :order_id
  end
end
