/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
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
    instance = new ApileagueJs.TextApi();
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

  describe('TextApi', function() {
    describe('correctSpelling', function() {
      it('should call correctSpelling successfully', function(done) {
        //uncomment below and update the code to test correctSpelling
        //instance.correctSpelling(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('detectGenderByName', function() {
      it('should call detectGenderByName successfully', function(done) {
        //uncomment below and update the code to test detectGenderByName
        //instance.detectGenderByName(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('detectLanguage', function() {
      it('should call detectLanguage successfully', function(done) {
        //uncomment below and update the code to test detectLanguage
        //instance.detectLanguage(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('detectSentiment', function() {
      it('should call detectSentiment successfully', function(done) {
        //uncomment below and update the code to test detectSentiment
        //instance.detectSentiment(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('extractDates', function() {
      it('should call extractDates successfully', function(done) {
        //uncomment below and update the code to test extractDates
        //instance.extractDates(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('extractEntities', function() {
      it('should call extractEntities successfully', function(done) {
        //uncomment below and update the code to test extractEntities
        //instance.extractEntities(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('listWordSynonyms', function() {
      it('should call listWordSynonyms successfully', function(done) {
        //uncomment below and update the code to test listWordSynonyms
        //instance.listWordSynonyms(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('pluralizeWord', function() {
      it('should call pluralizeWord successfully', function(done) {
        //uncomment below and update the code to test pluralizeWord
        //instance.pluralizeWord(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('scoreReadability', function() {
      it('should call scoreReadability successfully', function(done) {
        //uncomment below and update the code to test scoreReadability
        //instance.scoreReadability(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('scoreText', function() {
      it('should call scoreText successfully', function(done) {
        //uncomment below and update the code to test scoreText
        //instance.scoreText(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('singularizeWord', function() {
      it('should call singularizeWord successfully', function(done) {
        //uncomment below and update the code to test singularizeWord
        //instance.singularizeWord(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('stemText', function() {
      it('should call stemText successfully', function(done) {
        //uncomment below and update the code to test stemText
        //instance.stemText(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('tagPartOfSpeech', function() {
      it('should call tagPartOfSpeech successfully', function(done) {
        //uncomment below and update the code to test tagPartOfSpeech
        //instance.tagPartOfSpeech(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
