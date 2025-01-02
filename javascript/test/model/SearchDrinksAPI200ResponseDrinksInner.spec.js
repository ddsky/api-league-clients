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
    instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
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

  describe('SearchDrinksAPI200ResponseDrinksInner', function() {
    it('should create an instance of SearchDrinksAPI200ResponseDrinksInner', function() {
      // uncomment below and update the code to test SearchDrinksAPI200ResponseDrinksInner
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be.a(ApileagueJs.SearchDrinksAPI200ResponseDrinksInner);
    });

    it('should have the property flavors (base name: "flavors")', function() {
      // uncomment below and update the code to test the property flavors
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property instructions (base name: "instructions")', function() {
      // uncomment below and update the code to test the property instructions
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property images (base name: "images")', function() {
      // uncomment below and update the code to test the property images
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property nutrition (base name: "nutrition")', function() {
      // uncomment below and update the code to test the property nutrition
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property glassType (base name: "glass_type")', function() {
      // uncomment below and update the code to test the property glassType
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property credits (base name: "credits")', function() {
      // uncomment below and update the code to test the property credits
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property pricePerServing (base name: "price_per_serving")', function() {
      // uncomment below and update the code to test the property pricePerServing
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property ingredients (base name: "ingredients")', function() {
      // uncomment below and update the code to test the property ingredients
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

    it('should have the property cuisines (base name: "cuisines")', function() {
      // uncomment below and update the code to test the property cuisines
      //var instance = new ApileagueJs.SearchDrinksAPI200ResponseDrinksInner();
      //expect(instance).to.be();
    });

  });

}));
