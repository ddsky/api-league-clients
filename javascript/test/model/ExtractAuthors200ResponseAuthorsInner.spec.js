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
    instance = new ApiLeague.ExtractAuthors200ResponseAuthorsInner();
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

  describe('ExtractAuthors200ResponseAuthorsInner', function() {
    it('should create an instance of ExtractAuthors200ResponseAuthorsInner', function() {
      // uncomment below and update the code to test ExtractAuthors200ResponseAuthorsInner
      //var instance = new ApiLeague.ExtractAuthors200ResponseAuthorsInner();
      //expect(instance).to.be.a(ApiLeague.ExtractAuthors200ResponseAuthorsInner);
    });

    it('should have the property link (base name: "link")', function() {
      // uncomment below and update the code to test the property link
      //var instance = new ApiLeague.ExtractAuthors200ResponseAuthorsInner();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instance = new ApiLeague.ExtractAuthors200ResponseAuthorsInner();
      //expect(instance).to.be();
    });

  });

}));
