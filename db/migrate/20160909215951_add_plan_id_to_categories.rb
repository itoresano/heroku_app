class AddPlanIdToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :plan, index: true, foreign_key: true
  end
end
