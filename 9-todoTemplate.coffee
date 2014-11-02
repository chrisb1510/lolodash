_ = require 'lodash'

worker = (data) ->
	# sort each key by date
	_.forEach data,(todo,person) ->
		data[person] = _.sortBy(todo,'date')
	 


	_.template "<ul> <% `_.forEach(data,function (person){ return "<li><%= person.name %>\n"}`%></ul>",
	data, 
	{
	'imports':
		'sorter':sorter
	}
module.exports = worker