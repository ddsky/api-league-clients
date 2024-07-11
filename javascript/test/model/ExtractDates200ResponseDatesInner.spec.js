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
    instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
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

  describe('ExtractDates200ResponseDatesInner', function() {
    it('should create an instance of ExtractDates200ResponseDatesInner', function() {
      // uncomment below and update the code to test ExtractDates200ResponseDatesInner
      //var instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
      //expect(instance).to.be.a(ApileagueJs.ExtractDates200ResponseDatesInner);
    });

    it('should have the property startPosition (base name: "start_position")', function() {
      // uncomment below and update the code to test the property startPosition
      //var instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
      //expect(instance).to.be();
    });

    it('should have the property date (base name: "date")', function() {
      // uncomment below and update the code to test the property date
      //var instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
      //expect(instance).to.be();
    });

    it('should have the property normalizedDate (base name: "normalized_date")', function() {
      // uncomment below and update the code to test the property normalizedDate
      //var instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
      //expect(instance).to.be();
    });

    it('should have the property tag (base name: "tag")', function() {
      // uncomment below and update the code to test the property tag
      //var instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
      //expect(instance).to.be();
    });

    it('should have the property endPosition (base name: "end_position")', function() {
      // uncomment below and update the code to test the property endPosition
      //var instance = new ApileagueJs.ExtractDates200ResponseDatesInner();
      //expect(instance).to.be();
    });

  });

}));
