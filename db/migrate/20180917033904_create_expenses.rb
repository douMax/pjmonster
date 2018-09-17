class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.datetime :spend_on
      t.string :spend_at
      t.decimal :amount, precision: 18, scale: 2

      t.timestamps
    end
  end
end
