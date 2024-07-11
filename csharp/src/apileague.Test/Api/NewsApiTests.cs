/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
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
    ///  Class for testing NewsApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class NewsApiTests : IDisposable
    {
        private NewsApi instance;

        public NewsApiTests()
        {
            instance = new NewsApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of NewsApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' NewsApi
            //Assert.IsType<NewsApi>(instance);
        }

        /// <summary>
        /// Test ExtractNews
        /// </summary>
        [Fact]
        public void ExtractNewsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //bool analyze = null;
            //var response = instance.ExtractNews(url, analyze);
            //Assert.IsType<ExtractNews200Response>(response);
        }

        /// <summary>
        /// Test SearchNews
        /// </summary>
        [Fact]
        public void SearchNewsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? text = null;
            //string? sourceCountries = null;
            //string? language = null;
            //double? minSentiment = null;
            //double? maxSentiment = null;
            //string? earliestPublishDate = null;
            //string? latestPublishDate = null;
            //string? newsSources = null;
            //string? authors = null;
            //string? categories = null;
            //string? entities = null;
            //string? locationFilter = null;
            //string? sort = null;
            //string? sortDirection = null;
            //int? offset = null;
            //int? number = null;
            //var response = instance.SearchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number);
            //Assert.IsType<SearchNews200Response>(response);
        }

        /// <summary>
        /// Test TopNews
        /// </summary>
        [Fact]
        public void TopNewsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string sourceCountry = null;
            //string language = null;
            //string? date = null;
            //bool? headlinesOnly = null;
            //var response = instance.TopNews(sourceCountry, language, date, headlinesOnly);
            //Assert.IsType<TopNews200Response>(response);
        }
    }
}
