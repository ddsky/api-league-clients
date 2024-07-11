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
    instance = new ApileagueJs.WebApi();
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

  describe('WebApi', function() {
    describe('extractAuthors', function() {
      it('should call extractAuthors successfully', function(done) {
        //uncomment below and update the code to test extractAuthors
        //instance.extractAuthors(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('extractContentFromAWebPage', function() {
      it('should call extractContentFromAWebPage successfully', function(done) {
        //uncomment below and update the code to test extractContentFromAWebPage
        //instance.extractContentFromAWebPage(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('extractPublishDate', function() {
      it('should call extractPublishDate successfully', function(done) {
        //uncomment below and update the code to test extractPublishDate
        //instance.extractPublishDate(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('retrievePageRank', function() {
      it('should call retrievePageRank successfully', function(done) {
        //uncomment below and update the code to test retrievePageRank
        //instance.retrievePageRank(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('searchWeb', function() {
      it('should call searchWeb successfully', function(done) {
        //uncomment below and update the code to test searchWeb
        //instance.searchWeb(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('verifyEmailAddress', function() {
      it('should call verifyEmailAddress successfully', function(done) {
        //uncomment below and update the code to test verifyEmailAddress
        //instance.verifyEmailAddress(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
