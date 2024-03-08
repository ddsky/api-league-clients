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
    instance = new ApiLeague.ExtractNews200Response();
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

  describe('ExtractNews200Response', function() {
    it('should create an instance of ExtractNews200Response', function() {
      // uncomment below and update the code to test ExtractNews200Response
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be.a(ApiLeague.ExtractNews200Response);
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property text (base name: "text")', function() {
      // uncomment below and update the code to test the property text
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property url (base name: "url")', function() {
      // uncomment below and update the code to test the property url
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property publishDate (base name: "publish_date")', function() {
      // uncomment below and update the code to test the property publishDate
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property author (base name: "author")', function() {
      // uncomment below and update the code to test the property author
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property language (base name: "language")', function() {
      // uncomment below and update the code to test the property language
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property sourceCountry (base name: "source_country")', function() {
      // uncomment below and update the code to test the property sourceCountry
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

    it('should have the property sentiment (base name: "sentiment")', function() {
      // uncomment below and update the code to test the property sentiment
      //var instance = new ApiLeague.ExtractNews200Response();
      //expect(instance).to.be();
    });

  });

}));