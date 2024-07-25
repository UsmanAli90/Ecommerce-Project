class CreatePayments < ActiveRecord::Migration[7.2]
  def change
    create_table :payments do |t|
      t.references :oder, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
