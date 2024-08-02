class OrderItem < ApplicationRecord
  include Ransackable
  belongs_to :order
  belongs_to :item
end
