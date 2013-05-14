class Invoice < ActiveRecord::Base
  attr_accessible :name, :state

  belongs_to :customer
  has_one :state

  delegate :street, :city, :state, :zip_code, :to => :customer, :prefix => true

  delegate :to_xml, :to_pdf, :to_json, :to => :converter

  def self.find_purchased
	joins(:state).where('states.name' => 'purchased')  	
  end

  def self.find_delivered
  	joins(:state).where('states.name' => 'delivered')
  end

  def self.find_recent_purchased
  	find_purchased.order('updated_at').limit(3)
  end

  def converter
  	InvoiceConverter.new(self)
  end


end
