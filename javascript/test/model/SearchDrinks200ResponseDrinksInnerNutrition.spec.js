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
    instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
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

  describe('SearchDrinks200ResponseDrinksInnerNutrition', function() {
    it('should create an instance of SearchDrinks200ResponseDrinksInnerNutrition', function() {
      // uncomment below and update the code to test SearchDrinks200ResponseDrinksInnerNutrition
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be.a(ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition);
    });

    it('should have the property weightPerServing (base name: "weight_per_serving")', function() {
      // uncomment below and update the code to test the property weightPerServing
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be();
    });

    it('should have the property caloricBreakdown (base name: "caloric_breakdown")', function() {
      // uncomment below and update the code to test the property caloricBreakdown
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be();
    });

    it('should have the property flavonoids (base name: "flavonoids")', function() {
      // uncomment below and update the code to test the property flavonoids
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be();
    });

    it('should have the property ingredientBreakdown (base name: "ingredient_breakdown")', function() {
      // uncomment below and update the code to test the property ingredientBreakdown
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be();
    });

    it('should have the property properties (base name: "properties")', function() {
      // uncomment below and update the code to test the property properties
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be();
    });

    it('should have the property nutrients (base name: "nutrients")', function() {
      // uncomment below and update the code to test the property nutrients
      //var instance = new ApileagueJs.SearchDrinks200ResponseDrinksInnerNutrition();
      //expect(instance).to.be();
    });

  });

}));
