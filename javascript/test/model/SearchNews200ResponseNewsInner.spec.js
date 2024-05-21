/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
    instance = new ApileagueJs.SearchNews200ResponseNewsInner();
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

  describe('SearchNews200ResponseNewsInner', function() {
    it('should create an instance of SearchNews200ResponseNewsInner', function() {
      // uncomment below and update the code to test SearchNews200ResponseNewsInner
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be.a(ApileagueJs.SearchNews200ResponseNewsInner);
    });

    it('should have the property summary (base name: "summary")', function() {
      // uncomment below and update the code to test the property summary
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property image (base name: "image")', function() {
      // uncomment below and update the code to test the property image
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property sentiment (base name: "sentiment")', function() {
      // uncomment below and update the code to test the property sentiment
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property sourceCountry (base name: "source_country")', function() {
      // uncomment below and update the code to test the property sourceCountry
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property language (base name: "language")', function() {
      // uncomment below and update the code to test the property language
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property text (base name: "text")', function() {
      // uncomment below and update the code to test the property text
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property title (base name: "title")', function() {
      // uncomment below and update the code to test the property title
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property publishDate (base name: "publish_date")', function() {
      // uncomment below and update the code to test the property publishDate
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property url (base name: "url")', function() {
      // uncomment below and update the code to test the property url
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

    it('should have the property authors (base name: "authors")', function() {
      // uncomment below and update the code to test the property authors
      //var instance = new ApileagueJs.SearchNews200ResponseNewsInner();
      //expect(instance).to.be();
    });

  });

}));
