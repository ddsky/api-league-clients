/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
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
    instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
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

  describe('RetrieveRecipeInformation200ResponseDietaryProperties', function() {
    it('should create an instance of RetrieveRecipeInformation200ResponseDietaryProperties', function() {
      // uncomment below and update the code to test RetrieveRecipeInformation200ResponseDietaryProperties
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be.a(ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties);
    });

    it('should have the property lowFodmap (base name: "low_fodmap")', function() {
      // uncomment below and update the code to test the property lowFodmap
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

    it('should have the property vegetarian (base name: "vegetarian")', function() {
      // uncomment below and update the code to test the property vegetarian
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

    it('should have the property vegan (base name: "vegan")', function() {
      // uncomment below and update the code to test the property vegan
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

    it('should have the property glutenFree (base name: "gluten_free")', function() {
      // uncomment below and update the code to test the property glutenFree
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

    it('should have the property dairyFree (base name: "dairy_free")', function() {
      // uncomment below and update the code to test the property dairyFree
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

    it('should have the property gaps (base name: "gaps")', function() {
      // uncomment below and update the code to test the property gaps
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

    it('should have the property diets (base name: "diets")', function() {
      // uncomment below and update the code to test the property diets
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseDietaryProperties();
      //expect(instance).to.be();
    });

  });

}));
