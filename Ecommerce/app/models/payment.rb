class Payment < ApplicationRecord
  include Ransackable
  belongs_to :order
end
