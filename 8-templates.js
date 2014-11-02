// Generated by CoffeeScript 1.8.0
(function() {
  var worker, _;

  _ = require('lodash');

  worker = function(items) {
    var data;
    data = {
      "name": items.name,
      "logins": _.size(items.login)
    };
    return _.template("Hello <%= name %> (logins: <%= logins %>)", data);
  };

  module.exports = worker;

}).call(this);