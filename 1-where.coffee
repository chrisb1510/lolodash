_ = require 'lodash'

worker = (items) ->
	_.where items, {'active':true}

module.exports = worker