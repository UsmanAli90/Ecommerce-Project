class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "item_id", "order_id", "price", "quantity", "total_price", "updated_at"]
  end
end
