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
    ///  Class for testing WebApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class WebApiTests : IDisposable
    {
        private WebApi instance;

        public WebApiTests()
        {
            instance = new WebApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of WebApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' WebApi
            //Assert.IsType<WebApi>(instance);
        }

        /// <summary>
        /// Test ExtractAuthorsAPI
        /// </summary>
        [Fact]
        public void ExtractAuthorsAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //var response = instance.ExtractAuthorsAPI(url);
            //Assert.IsType<ExtractAuthorsAPI200Response>(response);
        }

        /// <summary>
        /// Test ExtractContentFromAWebPageAPI
        /// </summary>
        [Fact]
        public void ExtractContentFromAWebPageAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //var response = instance.ExtractContentFromAWebPageAPI(url);
            //Assert.IsType<ExtractContentFromAWebPageAPI200Response>(response);
        }

        /// <summary>
        /// Test ExtractPublishDateAPI
        /// </summary>
        [Fact]
        public void ExtractPublishDateAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //var response = instance.ExtractPublishDateAPI(url);
            //Assert.IsType<ExtractPublishDateAPI200Response>(response);
        }

        /// <summary>
        /// Test RetrievePageRankAPI
        /// </summary>
        [Fact]
        public void RetrievePageRankAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string domain = null;
            //var response = instance.RetrievePageRankAPI(domain);
            //Assert.IsType<RetrievePageRankAPI200Response>(response);
        }

        /// <summary>
        /// Test SearchWebAPI
        /// </summary>
        [Fact]
        public void SearchWebAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string query = null;
            //int? number = null;
            //var response = instance.SearchWebAPI(query, number);
            //Assert.IsType<SearchWebAPI200Response>(response);
        }

        /// <summary>
        /// Test VerifyEmailAddressAPI
        /// </summary>
        [Fact]
        public void VerifyEmailAddressAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string email = null;
            //var response = instance.VerifyEmailAddressAPI(email);
            //Assert.IsType<VerifyEmailAddressAPI200Response>(response);
        }
    }
}
