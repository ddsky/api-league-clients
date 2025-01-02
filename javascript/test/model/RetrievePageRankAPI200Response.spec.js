/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
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
    instance = new ApileagueJs.RetrievePageRankAPI200Response();
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

  describe('RetrievePageRankAPI200Response', function() {
    it('should create an instance of RetrievePageRankAPI200Response', function() {
      // uncomment below and update the code to test RetrievePageRankAPI200Response
      //var instance = new ApileagueJs.RetrievePageRankAPI200Response();
      //expect(instance).to.be.a(ApileagueJs.RetrievePageRankAPI200Response);
    });

    it('should have the property pageRank (base name: "page_rank")', function() {
      // uncomment below and update the code to test the property pageRank
      //var instance = new ApileagueJs.RetrievePageRankAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property position (base name: "position")', function() {
      // uncomment below and update the code to test the property position
      //var instance = new ApileagueJs.RetrievePageRankAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property percentile (base name: "percentile")', function() {
      // uncomment below and update the code to test the property percentile
      //var instance = new ApileagueJs.RetrievePageRankAPI200Response();
      //expect(instance).to.be();
    });

  });

}));