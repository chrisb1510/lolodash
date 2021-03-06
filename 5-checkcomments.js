// Generated by CoffeeScript 1.8.0
(function() {
  var worker, _;

  _ = require('lodash');

  worker = function(items) {
    var res, result;
    result = [];
    res = _.groupBy(items, 'username');
    _.forEach(res, function(comments, user) {
      return result.push({
        "username": user,
        "comment_count": _.size(comments)
      });
    });
    return _.sortBy(result, 'comment_count').reverse();
  };

  module.exports = worker;

}).call(this);
