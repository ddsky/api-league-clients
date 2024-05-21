/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
    instance = new ApileagueJs.SearchJokes200ResponseJokesInner();
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

  describe('SearchJokes200ResponseJokesInner', function() {
    it('should create an instance of SearchJokes200ResponseJokesInner', function() {
      // uncomment below and update the code to test SearchJokes200ResponseJokesInner
      //var instance = new ApileagueJs.SearchJokes200ResponseJokesInner();
      //expect(instance).to.be.a(ApileagueJs.SearchJokes200ResponseJokesInner);
    });

    it('should have the property joke (base name: "joke")', function() {
      // uncomment below and update the code to test the property joke
      //var instance = new ApileagueJs.SearchJokes200ResponseJokesInner();
      //expect(instance).to.be();
    });

  });

}));
