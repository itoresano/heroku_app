class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :budget
      t.string :integer

      t.timestamps null: false
    end
  end
end
