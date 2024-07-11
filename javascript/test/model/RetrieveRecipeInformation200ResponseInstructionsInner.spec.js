/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
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
    instance = new ApileagueJs.RetrieveRecipeInformation200ResponseInstructionsInner();
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

  describe('RetrieveRecipeInformation200ResponseInstructionsInner', function() {
    it('should create an instance of RetrieveRecipeInformation200ResponseInstructionsInner', function() {
      // uncomment below and update the code to test RetrieveRecipeInformation200ResponseInstructionsInner
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseInstructionsInner();
      //expect(instance).to.be.a(ApileagueJs.RetrieveRecipeInformation200ResponseInstructionsInner);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseInstructionsInner();
      //expect(instance).to.be();
    });

    it('should have the property steps (base name: "steps")', function() {
      // uncomment below and update the code to test the property steps
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseInstructionsInner();
      //expect(instance).to.be();
    });

  });

}));
