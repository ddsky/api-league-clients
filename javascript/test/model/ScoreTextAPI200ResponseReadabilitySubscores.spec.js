/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
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
    instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
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

  describe('ScoreTextAPI200ResponseReadabilitySubscores', function() {
    it('should create an instance of ScoreTextAPI200ResponseReadabilitySubscores', function() {
      // uncomment below and update the code to test ScoreTextAPI200ResponseReadabilitySubscores
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be.a(ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores);
    });

    it('should have the property readingTimeSeconds (base name: "reading_time_seconds")', function() {
      // uncomment below and update the code to test the property readingTimeSeconds
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property forcast (base name: "forcast")', function() {
      // uncomment below and update the code to test the property forcast
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property flesch (base name: "flesch")', function() {
      // uncomment below and update the code to test the property flesch
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property smog (base name: "smog")', function() {
      // uncomment below and update the code to test the property smog
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property ari (base name: "ari")', function() {
      // uncomment below and update the code to test the property ari
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property lix (base name: "lix")', function() {
      // uncomment below and update the code to test the property lix
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property colemanLiau (base name: "coleman_liau")', function() {
      // uncomment below and update the code to test the property colemanLiau
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property kincaid (base name: "kincaid")', function() {
      // uncomment below and update the code to test the property kincaid
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property fog (base name: "fog")', function() {
      // uncomment below and update the code to test the property fog
      //var instance = new ApileagueJs.ScoreTextAPI200ResponseReadabilitySubscores();
      //expect(instance).to.be();
    });

  });

}));