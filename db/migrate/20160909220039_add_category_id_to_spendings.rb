class AddCategoryIdToSpendings < ActiveRecord::Migration
  def change
    add_reference :spendings, :category, index: true, foreign_key: true
  end
end
