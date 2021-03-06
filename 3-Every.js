// Generated by CoffeeScript 1.8.0
(function() {
  var worker, _;

  _ = require('lodash');

  worker = function(items) {
    return _.forEach(items, function(city) {
      var _ref;
      if (city.population > 1.0) {
        return city.size = 'big';
      } else if ((0.5001 < (_ref = city.population) && _ref < 0.9999)) {
        return city.size = 'med';
      } else {
        return city.size = 'small';
      }
    });
  };

  module.exports = worker;

}).call(this);
