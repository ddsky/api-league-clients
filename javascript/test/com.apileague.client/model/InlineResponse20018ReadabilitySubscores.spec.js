/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
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
    define(['expect.js', process.cwd()+'/src/com.apileague.client/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/com.apileague.client/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.ApiLeague);
  }
}(this, function(expect, ApiLeague) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
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

  describe('InlineResponse20018ReadabilitySubscores', function() {
    it('should create an instance of InlineResponse20018ReadabilitySubscores', function() {
      // uncomment below and update the code to test InlineResponse20018ReadabilitySubscores
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be.a(ApiLeague.InlineResponse20018ReadabilitySubscores);
    });

    it('should have the property readingTimeSeconds (base name: "reading_time_seconds")', function() {
      // uncomment below and update the code to test the property readingTimeSeconds
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property forcast (base name: "forcast")', function() {
      // uncomment below and update the code to test the property forcast
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property flesch (base name: "flesch")', function() {
      // uncomment below and update the code to test the property flesch
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property smog (base name: "smog")', function() {
      // uncomment below and update the code to test the property smog
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property ari (base name: "ari")', function() {
      // uncomment below and update the code to test the property ari
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property lix (base name: "lix")', function() {
      // uncomment below and update the code to test the property lix
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property colemanLiau (base name: "coleman_liau")', function() {
      // uncomment below and update the code to test the property colemanLiau
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property kincaid (base name: "kincaid")', function() {
      // uncomment below and update the code to test the property kincaid
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property fog (base name: "fog")', function() {
      // uncomment below and update the code to test the property fog
      //var instance = new ApiLeague.InlineResponse20018ReadabilitySubscores();
      //expect(instance).to.be();
    });

  });

}));
