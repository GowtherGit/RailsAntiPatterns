class AddInvoiceToState < ActiveRecord::Migration
  def change
    add_column :states, :invoice_id, :integer
  end
end
