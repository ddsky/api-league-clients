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
    ///  Class for testing StorageApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class StorageApiTests : IDisposable
    {
        private StorageApi instance;

        public StorageApiTests()
        {
            instance = new StorageApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of StorageApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' StorageApi
            //Assert.IsType<StorageApi>(instance);
        }

        /// <summary>
        /// Test ReadKeyValueFromStoreAPI
        /// </summary>
        [Fact]
        public void ReadKeyValueFromStoreAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string key = null;
            //var response = instance.ReadKeyValueFromStoreAPI(key);
            //Assert.IsType<ReadKeyValueFromStoreAPI200Response>(response);
        }

        /// <summary>
        /// Test StoreKeyValueGETAPI
        /// </summary>
        [Fact]
        public void StoreKeyValueGETAPITest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string key = null;
            //string value = null;
            //var response = instance.StoreKeyValueGETAPI(key, value);
            //Assert.IsType<StoreKeyValueGETAPI200Response>(response);
        }
    }
}
