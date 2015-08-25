module DetailsHelper


	def current_product_store_category
		case @product.store_category
		when 'Womens Clothing'
			'womens_clothing_details'
		when 'Mens Clothing'
			'mens_clothing_details'
		when 'Coffee Mugs'
			'coffee_mug_details'
		when 'Needlepoint'
			'needlepoint_details'
		when 'Kitchen Items'
			'kitchen_item_details'
		when 'Office Supplies'
			'office_supply_details'	
		when 'Other'
			'other_details'
		end
	end


	def item_condition
		[			
			'Pre-owned',
			'New with tags', 
			'New without tags',
			'New with defects' 
		]
	end	

	def format_type	
			['Auction', 'Fixed Price']	
	end

	def durations
		["Select", "1 day", "3 days","5 days", "7 days", "10 days", "30 days", "Good 'til cancelled"]
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
	# **********************************************
	# MEN'S CLOTHING/////////////////////////////////
	# **********************************************

	def size_type_men
		['Regular', 'Big & Tall']
			
	end

	def size_men
		[	
			'XS',
			'S',
			'M',
			'L',
			'XL',
			'2XL',
			'3XL',
			'4XL',
			'MT',
			'LT',
			'XLT',
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
			'Big 10X'
		]
	end	

	def size_dress_shirt_men
		[
			'14',
			'14 1/2',	
			'15',	
			'15 1/2',	
			'16',	
			'16 1/2',	
			'17',	
			'17 1/2',	
			'18',	
			'18 1/2',	
			'19',	
			'19 1/2',	
			'20',	
			'20 1/2',	
			'21',	
			'21 1/2',	
			'22',	
			'22 1/2',	
			'XS',	
			'S',	
			'M',	
			'L',	
			'XL',	
			'2XL',	
			'3XL',	
			'MT',	
			'LT',	
			'XLT',	
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
			'Big 10X'
		]

	end

	def cuff_style_dress_shirt_men
		['Standard Cuff', 'French Cuff']
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
		'French Terry',
		'Gore-Tex, Water Resistant',
		'Hemp',
		'Faux Leather',
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
		'100% Silk',
		'Twill'
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

	def style_men_casual_shirt
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

	def style_men_pants_jeans
		[
			'Baggy, Loose',
			'Boot Cut',
			'Cargo',
			'Carpenter',
			'Classic, Straight Leg',
			'Overalls',
			'Relaxed',
			'Slim, Skinny',
			'Casual Pants',
			'Corduroys',
			'Dress - Flat Front',
			'Dress - Pleat	',
			'Khakis, Chinos',
			'Overalls'
		]
	end

	def sleeve_length_men
		[
		'32/33',
		'34/35',
		'36/37',
		'38/39',
		'Short Sleeve',
		'Long Sleeve'	
		]
	end

	def inseam_men
		[
		  '26',
			'27',
			'28',
			'29',
			'30',
			'31',
			'32',
			'33',
			'34',
			'35',
			'36',
			'38',
			'40',
			'42',
			'44'
		]
	end

	def brand_men
		[
			'Handmade',
			'191 Unlimited',
			'3.1 Phillip Lim',
			'5.11 Tactical',
			'55DSL',
			'7 For All Mankind',
			'883 Police',
			'a.n.a.',
			'A.P.C.',
			'A|S Armani Exchange',
			'Aaron Chang',
			'A Bathing Ape',
			'Abercrombie & Fitch',
			'Academy'
		]
	end

	def bottoms_size_men
		[
			'XS',		
			'S',	
			'M',	
			'L',	
			'XL',	
			'2XL',	
			'3XL',	
			'MT',	
			'LT',	
			'XLT',	
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
			'Big 10X',
			'26',	
			'27',	
			'28',	
			'29',	
			'30',	
			'31',	
			'32',	
			'33',	
			'34',	
			'35',	
			'36',	
			'37',	
			'38',	
			'39',	
			'40',	
			'42',	
			'44',	
			'46',	
			'48',	
			'50',	
			'52',	
			'54',	
			'56',	
			'58',	
			'60',	
			'62',	
			'64',	
			'66',	
			'68',	
			'70',	
			'72'	
		]
	end

	

	# **********************************************
	# WOMEN'S CLOTHING//////////////////////////////
	# **********************************************

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

	def style_women_top
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

	def style_women_dress
		[
			'Asymmetrical Hem',
			'Ball Gown',
			'Blouson',
			'Bubble',
			'Corset',
			'Empire Waist',
			'Maxi',
			'One Shoulder',
			'Peplum',
			'Sexy',
			'Sheath',
			'Shift',
			'Shirt Dress',
			'Stretch, Bodycon',
			'Sundress',
			'Sweater Dress',
			'Tiered',
			'Tunic',
			'Wiggle/Pencil',
			'Wrap Dress'
		]
	end	

	def style_women_sleeve
		[
			'3/4 Sleeve', 
			'Batwing, Dolman',
			'Cap Sleeve',
			'Halter',
			'Kimono Sleeve',
			'Long Sleeve',
			'Off-Shoulder',
			'One Shoulder',
			'Short Sleeve',
			'Sleeveless',
			'Spaghetti Strap',
			'Strapless'
		]
	end

	def label_designer_women
		[
			'Handmade',
			'Adrianna Papell',
			'Ann Taylor',
			'Ann Taylor LOFT',
			'Anthropologie',
			'Banana Republic',
			'BCBG MAX AZRIA',
			'bebe',
			'Betsy Johnson',
			'DVF',
			'Ever-Pretty',
			'Express',
			'FOREVER 21',
			'Free People',
			'Hawaiian',
			'J.Crew',
			'Jones New York',
			'Jovani',
			'Laundry',
			'Lilly Pulitzer',
			'Roberto Cavalli',
			'Talbots',
			'Taylor',
			'Unbranded'
		]
	end	

	def occasion_women
		[
			'Casual',
			'Clubwear',
			'Cocktail',
			'Formal',
			'Little Black Dress',
			'Summer/Beach',
			'Wear to Work'
		]
	end

end