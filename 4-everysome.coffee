_ = require 'lodash'

worker = (cities)->
    result = 
        hot:[]
        warm:[]

    check = (temp)->
        temp > 19

    _.forEach cities,(city,name) ->
        if (_.every( city, check) )
            result.hot.push name        
        else if (_.some(city, check)) 
            result.warm.push name
    result
module.exports = worker
