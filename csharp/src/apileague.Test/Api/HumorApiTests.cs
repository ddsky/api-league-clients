/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
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
    ///  Class for testing HumorApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class HumorApiTests : IDisposable
    {
        private HumorApi instance;

        public HumorApiTests()
        {
            instance = new HumorApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of HumorApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' HumorApi
            //Assert.IsType<HumorApi>(instance);
        }

        /// <summary>
        /// Test GenerateNonsenseWord
        /// </summary>
        [Fact]
        public void GenerateNonsenseWordTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //var response = instance.GenerateNonsenseWord();
            //Assert.IsType<GenerateNonsenseWord200Response>(response);
        }

        /// <summary>
        /// Test RandomJoke
        /// </summary>
        [Fact]
        public void RandomJokeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? includeTags = null;
            //string? excludeTags = null;
            //double? minRating = null;
            //int? maxLength = null;
            //var response = instance.RandomJoke(includeTags, excludeTags, minRating, maxLength);
            //Assert.IsType<SearchJokes200ResponseJokesInner>(response);
        }

        /// <summary>
        /// Test RandomMeme
        /// </summary>
        [Fact]
        public void RandomMemeTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? keywords = null;
            //bool? keywordsInImage = null;
            //string? mediaType = null;
            //double? minRating = null;
            //int? maxAgeDays = null;
            //var response = instance.RandomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
            //Assert.IsType<RandomMeme200Response>(response);
        }

        /// <summary>
        /// Test SearchGifs
        /// </summary>
        [Fact]
        public void SearchGifsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string query = null;
            //int? number = null;
            //var response = instance.SearchGifs(query, number);
            //Assert.IsType<SearchGifs200Response>(response);
        }

        /// <summary>
        /// Test SearchJokes
        /// </summary>
        [Fact]
        public void SearchJokesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? keywords = null;
            //string? includeTags = null;
            //string? excludeTags = null;
            //double? minRating = null;
            //double? maxLength = null;
            //int? offset = null;
            //int? number = null;
            //var response = instance.SearchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
            //Assert.IsType<SearchJokes200Response>(response);
        }

        /// <summary>
        /// Test SearchMemes
        /// </summary>
        [Fact]
        public void SearchMemesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? keywords = null;
            //bool? keywordsInImage = null;
            //string? mediaType = null;
            //double? minRating = null;
            //int? maxAgeDays = null;
            //int? offset = null;
            //int? number = null;
            //var response = instance.SearchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
            //Assert.IsType<SearchMemes200Response>(response);
        }
    }
}
