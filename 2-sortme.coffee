_ = require 'lodash'

worker = (items)->
	_.sortBy items,'quantity'
	.reverse()


module.exports = worker