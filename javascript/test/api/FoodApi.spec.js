/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
    instance = new ApileagueJs.FoodApi();
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

  describe('FoodApi', function() {
    describe('computeNutrition', function() {
      it('should call computeNutrition successfully', function(done) {
        //uncomment below and update the code to test computeNutrition
        //instance.computeNutrition(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('retrieveRecipeInformation', function() {
      it('should call retrieveRecipeInformation successfully', function(done) {
        //uncomment below and update the code to test retrieveRecipeInformation
        //instance.retrieveRecipeInformation(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('searchDrinks', function() {
      it('should call searchDrinks successfully', function(done) {
        //uncomment below and update the code to test searchDrinks
        //instance.searchDrinks(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('searchRecipes', function() {
      it('should call searchRecipes successfully', function(done) {
        //uncomment below and update the code to test searchRecipes
        //instance.searchRecipes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('searchRestaurants', function() {
      it('should call searchRestaurants successfully', function(done) {
        //uncomment below and update the code to test searchRestaurants
        //instance.searchRestaurants(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
