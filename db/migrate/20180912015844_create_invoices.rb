class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :invoice_number
      t.text :description
      t.integer :status
      t.datetime :invoice_date
      t.datetime :due_date
      t.boolean :is_a_claim

      t.timestamps
    end
  end
end
