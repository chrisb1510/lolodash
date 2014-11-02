_ = require 'lodash'

worker = (items)->
	result = []
	total= 0

	grouped = _.groupBy items, 'article'
	_.forEach grouped, (item, articleNum)->
	  total = 0
	  if _.size(item) is 1
        total = item[0].quantity
      else
        total = _.reduce item, (sum,item)->
        	sum + item.quantity
        ,0
      
      result.push {
      	"article": +articleNum
      	"total_orders":total
      	}

	_.sortBy result, 'total_orders'
	.reverse()

module.exports = worker