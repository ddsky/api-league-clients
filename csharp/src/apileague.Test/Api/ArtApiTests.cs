/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
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
    ///  Class for testing ArtApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class ArtApiTests : IDisposable
    {
        private ArtApi instance;

        public ArtApiTests()
        {
            instance = new ArtApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of ArtApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' ArtApi
            //Assert.IsType<ArtApi>(instance);
        }

        /// <summary>
        /// Test ImageToAsciiArtByURL
        /// </summary>
        [Fact]
        public void ImageToAsciiArtByURLTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //int? width = null;
            //int? height = null;
            //var response = instance.ImageToAsciiArtByURL(url, width, height);
            //Assert.IsType<string>(response);
        }

        /// <summary>
        /// Test RandomPoem
        /// </summary>
        [Fact]
        public void RandomPoemTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int? minLines = null;
            //int? maxLines = null;
            //var response = instance.RandomPoem(minLines, maxLines);
            //Assert.IsType<RandomPoem200Response>(response);
        }
    }
}
