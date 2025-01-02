/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
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
    ///  Class for testing KnowledgeApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class KnowledgeApiTests : IDisposable
    {
        private KnowledgeApi instance;

        public KnowledgeApiTests()
        {
            instance = new KnowledgeApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of KnowledgeApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' KnowledgeApi
            //Assert.IsType<KnowledgeApi>(instance);
        }

        /// <summary>
        /// Test RandomQuoteAPI
        /// </summary>
        [Fact]
        public void RandomQuoteAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? minLength = null;
            //int? maxLength = null;
            //var response = instance.RandomQuoteAPI(minLength, maxLength);
            //Assert.IsType<RandomQuoteAPI200Response>(response);
        }

        /// <summary>
        /// Test RandomRiddleAPI
        /// </summary>
        [Fact]
        public void RandomRiddleAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? difficulty = null;
            //var response = instance.RandomRiddleAPI(difficulty);
            //Assert.IsType<RandomRiddleAPI200Response>(response);
        }

        /// <summary>
        /// Test RandomTriviaAPI
        /// </summary>
        [Fact]
        public void RandomTriviaAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? maxLength = null;
            //var response = instance.RandomTriviaAPI(maxLength);
            //Assert.IsType<RandomTriviaAPI200Response>(response);
        }
    }
}
