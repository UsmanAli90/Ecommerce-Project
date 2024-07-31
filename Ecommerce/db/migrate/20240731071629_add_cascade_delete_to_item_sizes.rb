class AddCascadeDeleteToItemSizes < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :item_sizes, :items
    add_foreign_key :item_sizes, :items, on_delete: :cascade
  end
end
