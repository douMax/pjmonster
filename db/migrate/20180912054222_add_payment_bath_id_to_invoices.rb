class AddPaymentBathIdToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :payment_batch_id, :integer
  end
end
