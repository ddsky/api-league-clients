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
    instance = new ApiLeague.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown();
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

  describe('RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown', function() {
    it('should create an instance of RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown', function() {
      // uncomment below and update the code to test RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
      //var instance = new ApiLeague.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown();
      //expect(instance).to.be.a(ApiLeague.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown);
    });

    it('should have the property percentFat (base name: "percent_fat")', function() {
      // uncomment below and update the code to test the property percentFat
      //var instance = new ApiLeague.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown();
      //expect(instance).to.be();
    });

    it('should have the property percentCarbs (base name: "percent_carbs")', function() {
      // uncomment below and update the code to test the property percentCarbs
      //var instance = new ApiLeague.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown();
      //expect(instance).to.be();
    });

    it('should have the property percentProtein (base name: "percent_protein")', function() {
      // uncomment below and update the code to test the property percentProtein
      //var instance = new ApiLeague.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown();
      //expect(instance).to.be();
    });

  });

}));
