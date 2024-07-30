class Category < ApplicationRecord
    has_many :items

    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "id", "name", "updated_at"]
    end

    enum name: { Male: 0, Female: 1}
  end
  