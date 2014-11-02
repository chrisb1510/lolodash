_ = require 'lodash'

worker = (items)->
	result = []
	 
	items = _.sortBy items, 'income'

	total = _.reduce items, (sum,freelancer)->
		sum + freelancer.income
	,0
	average = total / _.size items

	underperform = _.filter items, (freelancer)->
		freelancer.income <= average
			
	overperform = _.filter items, (freelancer)->
		freelancer.income > average
			
	{
		"average":average
		"underperform":underperform
		"overperform":overperform
	}
	

module.exports = worker