class CreateAddProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :add_products do |t|
      t.string :Organization
      t.date :Date
      t.string :PO_Number
      t.string :Invoice_Number
      t.date :Invoice_Date
      t.string :Product
      t.string :Quantity_Units
      t.integer :Quantity
      t.decimal :Value
      t.decimal :Weight

      t.timestamps
    end
  end
end
