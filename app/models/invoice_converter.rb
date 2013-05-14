class InvoiceConverter 
	attr_reader :invoice 

	def initialize(invoice)
		@invoice = invoice 
	end

	def to_xml
		p 'to xml'
	end

	def to_pdf
		p 'to pdf'
	end

	def to_json
		p 'to json'
	end
end
