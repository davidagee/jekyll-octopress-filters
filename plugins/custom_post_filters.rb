module ElementNodeLiquidFilters
	
	def filter_posts(input, key, value = true)
		result = []
		input.flatten.each do |post|
			if post.is_a?(Jekyll::Post)
				if post.data[key] == value
					result << post
				end
			elsif post.is_a?(Hash) || post.is_a?(Array)
				result = result + filter_posts(result)
			end
		end
		result
	end
	
	def filter_featured(input)
		filter_posts(input, 'featured')
	end
end

Liquid::Template.register_filter ElementNodeLiquidFilters