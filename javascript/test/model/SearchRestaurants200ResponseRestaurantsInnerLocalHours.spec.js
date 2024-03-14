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
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.ApiLeague);
  }
}(this, function(expect, ApiLeague) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours();
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

  describe('SearchRestaurants200ResponseRestaurantsInnerLocalHours', function() {
    it('should create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHours', function() {
      // uncomment below and update the code to test SearchRestaurants200ResponseRestaurantsInnerLocalHours
      //var instance = new ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours();
      //expect(instance).to.be.a(ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours);
    });

    it('should have the property operational (base name: "operational")', function() {
      // uncomment below and update the code to test the property operational
      //var instance = new ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours();
      //expect(instance).to.be();
    });

    it('should have the property delivery (base name: "delivery")', function() {
      // uncomment below and update the code to test the property delivery
      //var instance = new ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours();
      //expect(instance).to.be();
    });

    it('should have the property pickup (base name: "pickup")', function() {
      // uncomment below and update the code to test the property pickup
      //var instance = new ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours();
      //expect(instance).to.be();
    });

    it('should have the property dineIn (base name: "dine_in")', function() {
      // uncomment below and update the code to test the property dineIn
      //var instance = new ApiLeague.SearchRestaurants200ResponseRestaurantsInnerLocalHours();
      //expect(instance).to.be();
    });

  });

}));