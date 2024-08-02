class Category < ApplicationRecord
  include Ransackable
  has_many :items    
  enum name: { Male: 0, Female: 1, All: 3}
end
  