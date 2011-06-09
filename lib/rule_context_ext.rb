module Nanoc3
	class RuleContext
		
		EXT_FILTERS = { 'erb' => :erb,
										'markdown' => :kramdown, 
                    'slim' => :slim
									}

		def filter_by_extensions
			item[:extension].split('.').reverse.each do |ext|
				filter EXT_FILTERS[ext] if EXT_FILTERS[ext]
			end
		end
  end
end
