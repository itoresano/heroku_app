class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :budget
      t.date :start_date
      t.text :description

      t.timestamps null: false
    end
  end
end
