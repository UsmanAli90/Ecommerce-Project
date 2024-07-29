class ItemSize < ApplicationRecord
  belongs_to :item
  belongs_to :size
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "item_id", "quantity", "size_id", "updated_at"]
  end
end
