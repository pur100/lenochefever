class AddSirenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :siren, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :company_name, :string
    add_column :users, :address, :string
  end
end
