class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :name
      t.integer :customer_id

      t.timestamps
    end
  end
end
