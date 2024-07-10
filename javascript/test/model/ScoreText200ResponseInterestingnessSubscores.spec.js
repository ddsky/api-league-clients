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
    instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
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

  describe('ScoreText200ResponseInterestingnessSubscores', function() {
    it('should create an instance of ScoreText200ResponseInterestingnessSubscores', function() {
      // uncomment below and update the code to test ScoreText200ResponseInterestingnessSubscores
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
      //expect(instance).to.be.a(ApileagueJs.ScoreText200ResponseInterestingnessSubscores);
    });

    it('should have the property titleRatingScore (base name: "title_rating_score")', function() {
      // uncomment below and update the code to test the property titleRatingScore
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
      //expect(instance).to.be();
    });

    it('should have the property quoteScore (base name: "quote_score")', function() {
      // uncomment below and update the code to test the property quoteScore
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
      //expect(instance).to.be();
    });

    it('should have the property lengthScore (base name: "length_score")', function() {
      // uncomment below and update the code to test the property lengthScore
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
      //expect(instance).to.be();
    });

    it('should have the property linkScore (base name: "link_score")', function() {
      // uncomment below and update the code to test the property linkScore
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
      //expect(instance).to.be();
    });

    it('should have the property googleHitsScore (base name: "google_hits_score")', function() {
      // uncomment below and update the code to test the property googleHitsScore
      //var instance = new ApileagueJs.ScoreText200ResponseInterestingnessSubscores();
      //expect(instance).to.be();
    });

  });

}));
