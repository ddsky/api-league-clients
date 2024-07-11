/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.ApileagueJs);
  }
}(this, function(expect, ApileagueJs) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new ApileagueJs.ScoreText200ResponseInterestingness();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('ScoreText200ResponseInterestingness', function() {
    it('should create an instance of ScoreText200ResponseInterestingness', function() {
      // uncomment below and update the code to test ScoreText200ResponseInterestingness
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingness();
      //expect(instance).to.be.a(ApileagueJs.ScoreText200ResponseInterestingness);
    });

    it('should have the property mainscores (base name: "mainscores")', function() {
      // uncomment below and update the code to test the property mainscores
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingness();
      //expect(instance).to.be();
    });

    it('should have the property subscores (base name: "subscores")', function() {
      // uncomment below and update the code to test the property subscores
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingness();
      //expect(instance).to.be();
    });

  });

}));
