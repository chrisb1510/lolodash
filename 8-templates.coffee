_ = require 'lodash'

worker = (items) ->
	data = {
		"name":items.name
		"logins":_.size items.login
	}
	_.template "Hello <%= name %> (logins: <%= logins %>)", data
		
module.exports = worker