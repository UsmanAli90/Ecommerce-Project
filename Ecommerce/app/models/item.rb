class Item < ApplicationRecord
    belongs_to :category
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :item_sizes
    has_many :sizes, through: :item_sizes

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "name", "price", "updated_at"]
    end
	
    def self.ransackable_associations(auth_object = nil)
    	["category", "item_sizes", "order_items", "orders", "sizes"]
    end
end

