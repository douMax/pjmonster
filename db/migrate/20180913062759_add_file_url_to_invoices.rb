class AddFileUrlToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :file_url, :text
  end
end
