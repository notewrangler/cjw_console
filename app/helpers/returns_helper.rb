module ReturnsHelper

	def return_policy
		['Returns accepted, 14 days, buyer, money back', 'No returns accepted']
	end

	def accepted_or_not
		['Returns Accepted',
			'No Returns Accepted']
	end

	def contact_time_limit
		['14 days',
			'30 days',
			'60 days']
	end

	def refund_type
		["Money Back",
			"Money Back or Replacement (Buyer's Choice)",
			"Money Back or Exchange (Buyer's Choice)"]
	end

	def shipping
		['Buyer',
			'Seller']
	end
	
end