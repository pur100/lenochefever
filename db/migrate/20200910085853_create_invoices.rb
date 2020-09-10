class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.references :user, null: false, foreign_key: true
      t.string :debtor
      t.integer :amount
      t.string :invoice_file
      t.timestamps
    end
  end
end
