class RemoveColumnFromTable < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :Quantity_Units, :string
  end
end
