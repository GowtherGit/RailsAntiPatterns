class Address
  attr_accessor :city, :state, :street, :zip_code

  def initialize(args = {}) # street, city, state, zip_code
  	@street, @city, @state, @zip_code = args[:street], args[:city], args[:state], args[:zip_code]
  end
end
