class CreatePaymentBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_batches do |t|
      t.string :name
      t.integer :batch_period
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
