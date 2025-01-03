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
    instance = new ApileagueJs.ScoreTextAPI200Response();
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

  describe('ScoreTextAPI200Response', function() {
    it('should create an instance of ScoreTextAPI200Response', function() {
      // uncomment below and update the code to test ScoreTextAPI200Response
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be.a(ApileagueJs.ScoreTextAPI200Response);
    });

    it('should have the property numberOfWords (base name: "number_of_words")', function() {
      // uncomment below and update the code to test the property numberOfWords
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property numberOfSentences (base name: "number_of_sentences")', function() {
      // uncomment below and update the code to test the property numberOfSentences
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property readability (base name: "readability")', function() {
      // uncomment below and update the code to test the property readability
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property skimmability (base name: "skimmability")', function() {
      // uncomment below and update the code to test the property skimmability
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property interestingness (base name: "interestingness")', function() {
      // uncomment below and update the code to test the property interestingness
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property style (base name: "style")', function() {
      // uncomment below and update the code to test the property style
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

    it('should have the property totalScore (base name: "total_score")', function() {
      // uncomment below and update the code to test the property totalScore
      //var instance = new ApileagueJs.ScoreTextAPI200Response();
      //expect(instance).to.be();
    });

  });

}));
