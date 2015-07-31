class EbayCategory < ActiveRecord::Base

	


	def f1
		return "" if sub_category1.blank?	
			if sub_category2.blank?	
				return sub_category1
			else	
				return sub_category1 + " > "
			end		
	end

	def f2
		return "" if sub_category2.blank?		
			if sub_category3.blank?	
				return sub_category2
			else	
				return sub_category2 + " > "
			end				
	end

	def f3
		return "" if sub_category3.blank?
			if sub_category4.blank?	
				return sub_category3
			else	
				return sub_category3 + " > "
			end				
	end

	def f4
		return "" if sub_category4.blank?
		 if sub_category5.blank?	
				return sub_category4
			else	
				return sub_category4 + " > "
			end				
	end

	def f5
		return "" if sub_category5.blank?		
			return sub_category5
	end	

end
