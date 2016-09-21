class RemoveBudgetFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :budget, :string
  end
end
