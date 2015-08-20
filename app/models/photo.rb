class Photo < ActiveRecord::Base
	belongs_to :product

	mount_uploader :image, ImageUploader

	before_save :grab_file_name

	def grab_file_name
		backword = self.image.to_s
		bw = backword.reverse
		word = ""
		i = 0
		bw.each_char do |c|
			c = bw[i]
		 	break if c == "/"
		 	word += c 
		 	i += 1
		end 
		self.name = word.reverse
	end
 
end
