/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
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
    instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
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

  describe('ScoreText200ResponseSkimmabilitySubscores', function() {
    it('should create an instance of ScoreText200ResponseSkimmabilitySubscores', function() {
      // uncomment below and update the code to test ScoreText200ResponseSkimmabilitySubscores
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be.a(ApileagueJs.ScoreText200ResponseSkimmabilitySubscores);
    });

    it('should have the property bulletPointRatioScore (base name: "bullet_point_ratio_score")', function() {
      // uncomment below and update the code to test the property bulletPointRatioScore
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property imageScore (base name: "image_score")', function() {
      // uncomment below and update the code to test the property imageScore
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property highlightedWordRatioScore (base name: "highlighted_word_ratio_score")', function() {
      // uncomment below and update the code to test the property highlightedWordRatioScore
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property videoScore (base name: "video_score")', function() {
      // uncomment below and update the code to test the property videoScore
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property paragraphScore (base name: "paragraph_score")', function() {
      // uncomment below and update the code to test the property paragraphScore
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be();
    });

    it('should have the property paragraphHeadlineRatioScore (base name: "paragraph_headline_ratio_score")', function() {
      // uncomment below and update the code to test the property paragraphHeadlineRatioScore
      //var instance = new ApileagueJs.ScoreText200ResponseSkimmabilitySubscores();
      //expect(instance).to.be();
    });

  });

}));
