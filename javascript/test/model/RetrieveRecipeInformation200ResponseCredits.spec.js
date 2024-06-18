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
    instance = new ApileagueJs.RetrieveRecipeInformation200ResponseCredits();
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

  describe('RetrieveRecipeInformation200ResponseCredits', function() {
    it('should create an instance of RetrieveRecipeInformation200ResponseCredits', function() {
      // uncomment below and update the code to test RetrieveRecipeInformation200ResponseCredits
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseCredits();
      //expect(instance).to.be.a(ApileagueJs.RetrieveRecipeInformation200ResponseCredits);
    });

    it('should have the property license (base name: "license")', function() {
      // uncomment below and update the code to test the property license
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseCredits();
      //expect(instance).to.be();
    });

    it('should have the property text (base name: "text")', function() {
      // uncomment below and update the code to test the property text
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseCredits();
      //expect(instance).to.be();
    });

    it('should have the property sourceName (base name: "source_name")', function() {
      // uncomment below and update the code to test the property sourceName
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseCredits();
      //expect(instance).to.be();
    });

    it('should have the property sourceUrl (base name: "source_url")', function() {
      // uncomment below and update the code to test the property sourceUrl
      //var instance = new ApileagueJs.RetrieveRecipeInformation200ResponseCredits();
      //expect(instance).to.be();
    });

  });

}));
