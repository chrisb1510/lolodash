_ = require 'lodash'

worker = (items)->
	_.forEach items, (city)->
		if (city.population > 1.0)
			city.size = 'big'
			
		else if (0.5001 < city.population < 0.9999)
			city.size = 'med'
			
		else 
			city.size = 'small'
			
		
module.exports = worker