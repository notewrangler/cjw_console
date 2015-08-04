module ListingsHelper

	def condition
		[
			'Pre-owned', 
			'New with tags', 
			'New without tags', 
			'New with defects' 
		]
	end

	def listing_format
		['Auction', 'Buy it now']
	end

	def package_type
		['Package(or thick envelope)', 'Letter', 'Large Envelope', 'Large Package']
	end

	def shipping_weight
		[
			'1 lb or less',
			'1+ to 2 lbs',
			'2+ to 3 lbs',
			'3+ to 4 lbs',
			'4+ to 5 lbs',
			'5+ to 6 lbs',
			'6+ to 7 lbs',
			'7+ to 8 lbs',
			'8+ to 9 lbs',
			'9+ to 10 lbs'
		]
	end

	def return_policy
		['Returns accepted, 14 days, buyer, money back', 'No returns accepted']
	end

	def clothing_color
		[
			'Beige',
			'Black',
			'Blue',
			'Brown',
			'Gold',
			'Gray',
			'Green',
			'Ivory',
			'Multi-Color',
			'Orange',
			'Pink',
			'Purple',
			'Red', 
			'Silver',
			'White',
			'Yellow'
		]
	end

	# MEN'S CLOTHING

	def size_type_men
		['Regular', 'Big & Tall']
			
	end

	def size_men
		[	'XL',
			'MT',
			'MT',
			'LT',
			'2XLT',
			'3XLT',
			'4XLT',
			'5XLT',
			'6XLT',
			'Big 1X',
			'Big 2X',
			'Big 3X',
			'Big 4X',
			'Big 5X',
			'Big 6X',
			'Big 7X',
			'Big 8X',
			'Big 9X',
			'Big 10X' ]
	end	

	def material_men
	[
		'Acetate',
		'Bamboo',
		'100% Cashmere',
		'Cashmere Blend',
		'Corduroy',
		'100% Cotton',
		'Cotton Blend',
		'Organic Cotton',
		'Denim',
		'Flannel',
		'Fleece',
		'Fur',
		'Hemp',
		'Lace',
		'Leather',
		'Linen',
		'Linen Blend',
		'Lycra/Spandex',
		'Mocrofiber',
		'Microfleece',
		'Nylon',
		'Polyester',
		'Rayon',
		'Rayon Blend', 
		'Recycled Materials',
		'Satin',
		'100% Silk'
	]

	end	

	def pattern_men
		[
			'Twill Look',
			'Animal Print',
			'Camouflage',
			'Floral',
			'Geometric',
			'Paisley',
			'Plaids & Checks',
			'Polka Dot',
			'Solid',
			'Striped'
		]
	end	

	def style_men
		[
			'Button-Front',
			'Hawaiian',
			'Henley',
			'Polo',
			'Rugby',
			'Tank',
			'Turtleneck',
			'Western'
		]
	end

	# WOMEN'S CLOTHING

	def size_type_women
		[ 'Plus',
			'Regular',
			'Petites',
			'Junior' ]
	end	

	def size_women
		[	'1X',
			'2X',
			'3X',
			'4X',
			'5X',
			'6X',
			'7X',
			'8X',
			'9X',
			'10X',
			'14W',
			'16W',
			'18W',
			'20W',
			'22W',
			'24W',
			'26W',
			'28W',
			'30W',
			'32W',
			'34W',
			'36W',
			'38W',
			'40W',
			'42W',
			'44W' 
	  ]			
	end

	def material_women
	[
		'100% Cashmere',
		'100% Cotton',
		'100% Silk',
		'100% Wool',
		'Acetate',
		'Acrylic',
		'Acrylic Blend',
		'Bamboo',
		'Cashmere Blend',
		'Chiffon',
		'Corduroy',
		'Cotton Blend',
		'Denim',
		'Down',
		'Elastane, Spandex',
		'Faux Fur',
		'Faux Leather',
		'Faux Silk',
		'Faux Suede',
		'Fishnet',
		'Flannel',
		'Fleece',
		'French Terry'
	]
	end

	def pattern_women
		[ 'Flowers',
			'Animal Print',
			'Argyle, Diamond',
			'Camouflage',
			'Check',
			'Fair Isle, Nordic',
			'Floral',
			'Geometric',
			'Herringbone',
			'Houndstooth',
			'Multi-Colored',
			'Paisley',
			'Pinstripe',
			'Plaids & Checks',
			'Polka Dot',
			'Solid',
			'Striped',
			'Textured',
			'Wet look, Shiny'
		]
	end

	def style_women
		[
			'SS cotton sweater',
			'Blouse',
			'Button Down Shirt',
			'Crop Top',
			'Halter',
			'Knit Top',
			'Peplum',
			'Polo Shirt',
			'Sexy',
			'Tank, Cami',
			'Tunic',
			'Turtleneck',
			'Western',
			'Wrap'
		]
	end

end
