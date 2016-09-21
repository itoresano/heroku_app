class CreateSpendings < ActiveRecord::Migration
  def change
    create_table :spendings do |t|
      t.string :name
      t.text :descrption
      t.boolean :planned
      t.date :date

      t.timestamps null: false
    end
  end
end
