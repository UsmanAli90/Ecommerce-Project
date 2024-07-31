class AddCascadeDeleteToOrderItems < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :order_items, :items
    add_foreign_key :order_items, :items, on_delete: :cascade
  end
end
