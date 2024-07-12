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
    instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures();
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

  describe('RetrieveRecipeInformation200ResponseIngredientsInnerMeasures', function() {
    it('should create an instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasures', function() {
      // uncomment below and update the code to test RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures();
      //expect(instance).to.be.a(ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures);
    });

    it('should have the property metric (base name: "metric")', function() {
      // uncomment below and update the code to test the property metric
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures();
      //expect(instance).to.be();
    });

    it('should have the property us (base name: "us")', function() {
      // uncomment below and update the code to test the property us
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures();
      //expect(instance).to.be();
    });

  });

}));
