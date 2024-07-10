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
    instance = new ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();
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

  describe('ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner', function() {
    it('should create an instance of ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner', function() {
      // uncomment below and update the code to test ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
      //var instance = new ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();
      //expect(instance).to.be.a(ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();
      //expect(instance).to.be();
    });

    it('should have the property percentOfDailyNeeds (base name: "percent_of_daily_needs")', function() {
      // uncomment below and update the code to test the property percentOfDailyNeeds
      //var instance = new ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();
      //expect(instance).to.be();
    });

    it('should have the property amount (base name: "amount")', function() {
      // uncomment below and update the code to test the property amount
      //var instance = new ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();
      //expect(instance).to.be();
    });

    it('should have the property unit (base name: "unit")', function() {
      // uncomment below and update the code to test the property unit
      //var instance = new ApileagueJs.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner();
      //expect(instance).to.be();
    });

  });

}));
