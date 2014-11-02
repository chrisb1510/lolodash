_ = require 'lodash'

worker = (items)->
	result = []
	res = _.groupBy items, 'username'
	_.forEach res,(comments,user) ->
		

		result.push {
			"username" : user,
			"comment_count": _.size(comments)
		}
	_.sortBy result, 'comment_count'
	.reverse()

		# ...
module.exports = worker
