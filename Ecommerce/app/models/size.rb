class Size < ApplicationRecord
  include Ransackable
  has_many :item_sizes
  has_many :items, through: :item_sizes
end
