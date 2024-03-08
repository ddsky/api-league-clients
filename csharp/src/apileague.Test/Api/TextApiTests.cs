/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using RestSharp;
using Xunit;

using apileague.Client;
using apileague.Api;
// uncomment below to import models
//using apileague.Model;

namespace apileague.Test.Api
{
    /// <summary>
    ///  Class for testing TextApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class TextApiTests : IDisposable
    {
        private TextApi instance;

        public TextApiTests()
        {
            instance = new TextApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of TextApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' TextApi
            //Assert.IsType<TextApi>(instance);
        }

        /// <summary>
        /// Test CorrectSpelling
        /// </summary>
        [Fact]
        public void CorrectSpellingTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //string language = null;
            //var response = instance.CorrectSpelling(text, language);
            //Assert.IsType<CorrectSpelling200Response>(response);
        }

        /// <summary>
        /// Test DetectLanguage
        /// </summary>
        [Fact]
        public void DetectLanguageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.DetectLanguage(text);
            //Assert.IsType<List<DetectLanguage200ResponseInner>>(response);
        }

        /// <summary>
        /// Test DetectSentiment
        /// </summary>
        [Fact]
        public void DetectSentimentTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.DetectSentiment(text);
            //Assert.IsType<DetectSentiment200Response>(response);
        }

        /// <summary>
        /// Test ExtractDates
        /// </summary>
        [Fact]
        public void ExtractDatesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.ExtractDates(text);
            //Assert.IsType<ExtractDates200Response>(response);
        }

        /// <summary>
        /// Test ExtractEntities
        /// </summary>
        [Fact]
        public void ExtractEntitiesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.ExtractEntities(text);
            //Assert.IsType<ExtractEntities200Response>(response);
        }

        /// <summary>
        /// Test ListWordSynonyms
        /// </summary>
        [Fact]
        public void ListWordSynonymsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string word = null;
            //var response = instance.ListWordSynonyms(word);
            //Assert.IsType<ListWordSynonyms200Response>(response);
        }

        /// <summary>
        /// Test PartOfSpeechTagging
        /// </summary>
        [Fact]
        public void PartOfSpeechTaggingTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.PartOfSpeechTagging(text);
            //Assert.IsType<PartOfSpeechTagging200Response>(response);
        }

        /// <summary>
        /// Test PluralizeWord
        /// </summary>
        [Fact]
        public void PluralizeWordTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string word = null;
            //var response = instance.PluralizeWord(word);
            //Assert.IsType<PluralizeWord200Response>(response);
        }

        /// <summary>
        /// Test ScoreReadability
        /// </summary>
        [Fact]
        public void ScoreReadabilityTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.ScoreReadability(text);
            //Assert.IsType<ScoreReadability200Response>(response);
        }

        /// <summary>
        /// Test ScoreText
        /// </summary>
        [Fact]
        public void ScoreTextTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string title = null;
            //string text = null;
            //var response = instance.ScoreText(title, text);
            //Assert.IsType<ScoreText200Response>(response);
        }

        /// <summary>
        /// Test SingularizeWord
        /// </summary>
        [Fact]
        public void SingularizeWordTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string word = null;
            //var response = instance.SingularizeWord(word);
            //Assert.IsType<SingularizeWord200Response>(response);
        }

        /// <summary>
        /// Test TextStemming
        /// </summary>
        [Fact]
        public void TextStemmingTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string text = null;
            //var response = instance.TextStemming(text);
            //Assert.IsType<TextStemming200Response>(response);
        }
    }
}
