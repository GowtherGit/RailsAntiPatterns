class AddStreetAndCityAndStateAndZipCodeToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :street, :string
    add_column :customers, :city, :string
    add_column :customers, :state, :string
    add_column :customers, :zip_code, :string
  end
end
