class AddAmountToSpendings < ActiveRecord::Migration
  def change
    add_column :spendings, :amount, :integer
  end
end
