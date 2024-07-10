/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
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
    instance = new ApileagueJs.ScoreText200ResponseStyleSubscores();
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

  describe('ScoreText200ResponseStyleSubscores', function() {
    it('should create an instance of ScoreText200ResponseStyleSubscores', function() {
      // uncomment below and update the code to test ScoreText200ResponseStyleSubscores
      //var instance = new ApileagueJs.ScoreText200ResponseStyleSubscores();
      //expect(instance).to.be.a(ApileagueJs.ScoreText200ResponseStyleSubscores);
    });

    it('should have the property abbreviationScore (base name: "abbreviation_score")', function() {
      // uncomment below and update the code to test the property abbreviationScore
      //var instance = new ApileagueJs.ScoreText200ResponseStyleSubscores();
      //expect(instance).to.be();
    });

    it('should have the property styleScore (base name: "style_score")', function() {
      // uncomment below and update the code to test the property styleScore
      //var instance = new ApileagueJs.ScoreText200ResponseStyleSubscores();
      //expect(instance).to.be();
    });

    it('should have the property spellingScore (base name: "spelling_score")', function() {
      // uncomment below and update the code to test the property spellingScore
      //var instance = new ApileagueJs.ScoreText200ResponseStyleSubscores();
      //expect(instance).to.be();
    });

  });

}));
