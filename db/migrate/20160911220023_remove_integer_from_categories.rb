class RemoveIntegerFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :integer, :string
  end
end
