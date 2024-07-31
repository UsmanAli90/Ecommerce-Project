class ChangeCategoryNameToEnum < ActiveRecord::Migration[7.2]
  def change
    remove_column :categories, :name, :string
    add_column :categories, :name, :integer
  end
end