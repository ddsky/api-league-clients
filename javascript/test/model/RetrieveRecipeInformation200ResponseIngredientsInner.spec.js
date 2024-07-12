/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
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
    instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
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

  describe('RetrieveRecipeInformation200ResponseIngredientsInner', function() {
    it('should create an instance of RetrieveRecipeInformation200ResponseIngredientsInner', function() {
      // uncomment below and update the code to test RetrieveRecipeInformation200ResponseIngredientsInner
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be.a(ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner);
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property nameClean (base name: "name_clean")', function() {
      // uncomment below and update the code to test the property nameClean
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property amount (base name: "amount")', function() {
      // uncomment below and update the code to test the property amount
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property unit (base name: "unit")', function() {
      // uncomment below and update the code to test the property unit
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property measures (base name: "measures")', function() {
      // uncomment below and update the code to test the property measures
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property original (base name: "original")', function() {
      // uncomment below and update the code to test the property original
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property meta (base name: "meta")', function() {
      // uncomment below and update the code to test the property meta
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property originalName (base name: "original_name")', function() {
      // uncomment below and update the code to test the property originalName
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property aisle (base name: "aisle")', function() {
      // uncomment below and update the code to test the property aisle
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

    it('should have the property consistency (base name: "consistency")', function() {
      // uncomment below and update the code to test the property consistency
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInner();
      //expect(instance).to.be();
    });

  });

}));
