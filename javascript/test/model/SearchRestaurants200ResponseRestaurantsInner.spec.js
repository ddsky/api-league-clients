/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
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
    instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
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

  describe('SearchRestaurants200ResponseRestaurantsInner', function() {
    it('should create an instance of SearchRestaurants200ResponseRestaurantsInner', function() {
      // uncomment below and update the code to test SearchRestaurants200ResponseRestaurantsInner
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be.a(ApileagueJs.SearchRestaurants200ResponseRestaurantsInner);
    });

    it('should have the property offersThirdPartyDelivery (base name: "offers_third_party_delivery")', function() {
      // uncomment below and update the code to test the property offersThirdPartyDelivery
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property address (base name: "address")', function() {
      // uncomment below and update the code to test the property address
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property supportsUpcCodes (base name: "supports_upc_codes")', function() {
      // uncomment below and update the code to test the property supportsUpcCodes
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property isOpen (base name: "is_open")', function() {
      // uncomment below and update the code to test the property isOpen
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property weightedRatingValue (base name: "weighted_rating_value")', function() {
      // uncomment below and update the code to test the property weightedRatingValue
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property type (base name: "type")', function() {
      // uncomment below and update the code to test the property type
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property offersFirstPartyDelivery (base name: "offers_first_party_delivery")', function() {
      // uncomment below and update the code to test the property offersFirstPartyDelivery
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property aggregatedRatingCount (base name: "aggregated_rating_count")', function() {
      // uncomment below and update the code to test the property aggregatedRatingCount
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property pickupEnabled (base name: "pickup_enabled")', function() {
      // uncomment below and update the code to test the property pickupEnabled
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property cuisines (base name: "cuisines")', function() {
      // uncomment below and update the code to test the property cuisines
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property miles (base name: "miles")', function() {
      // uncomment below and update the code to test the property miles
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property dollarSigns (base name: "dollar_signs")', function() {
      // uncomment below and update the code to test the property dollarSigns
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property deliveryEnabled (base name: "delivery_enabled")', function() {
      // uncomment below and update the code to test the property deliveryEnabled
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property phoneNumber (base name: "phone_number")', function() {
      // uncomment below and update the code to test the property phoneNumber
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "_id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

    it('should have the property localHours (base name: "local_hours")', function() {
      // uncomment below and update the code to test the property localHours
      //var instance = new ApileagueJs.SearchRestaurants200ResponseRestaurantsInner();
      //expect(instance).to.be();
    });

  });

}));
