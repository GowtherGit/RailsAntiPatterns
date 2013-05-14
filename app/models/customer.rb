class Customer < ActiveRecord::Base
  attr_accessible :company, :email, :name

  has_many :invoices

  composed_of :address, :class_name => 'Address',
  		:mapping => [%w(street street), %w(city city), %w(state state), %w(zip_code zip_code)]
end
