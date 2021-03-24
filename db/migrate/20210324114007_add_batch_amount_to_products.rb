class AddBatchAmountToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :batch_amount, :string
  end
end
