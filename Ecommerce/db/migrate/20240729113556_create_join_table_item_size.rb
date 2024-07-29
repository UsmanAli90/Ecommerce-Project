class CreateJoinTableItemSize < ActiveRecord::Migration[7.2]
  def change
    create_join_table :items, :sizes do |t|
      # t.index [:item_id, :size_id]
      # t.index [:size_id, :item_id]
    end
  end
end
