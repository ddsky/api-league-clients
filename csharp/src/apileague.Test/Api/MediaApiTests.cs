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
    ///  Class for testing MediaApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class MediaApiTests : IDisposable
    {
        private MediaApi instance;

        public MediaApiTests()
        {
            instance = new MediaApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of MediaApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' MediaApi
            //Assert.IsType<MediaApi>(instance);
        }

        /// <summary>
        /// Test DetectMainImageColor
        /// </summary>
        [Fact]
        public void DetectMainImageColorTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //var response = instance.DetectMainImageColor(url);
            //Assert.IsType<List<DetectMainImageColor200ResponseInner>>(response);
        }

        /// <summary>
        /// Test RescaleImage
        /// </summary>
        [Fact]
        public void RescaleImageTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string url = null;
            //int width = null;
            //int height = null;
            //bool crop = null;
            //var response = instance.RescaleImage(url, width, height, crop);
            //Assert.IsType<System.IO.Stream>(response);
        }

        /// <summary>
        /// Test SearchIcons
        /// </summary>
        [Fact]
        public void SearchIconsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string query = null;
            //bool? onlyPublicDomain = null;
            //int? number = null;
            //var response = instance.SearchIcons(query, onlyPublicDomain, number);
            //Assert.IsType<SearchIcons200Response>(response);
        }

        /// <summary>
        /// Test SearchRoyaltyFreeImages
        /// </summary>
        [Fact]
        public void SearchRoyaltyFreeImagesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string query = null;
            //int? number = null;
            //var response = instance.SearchRoyaltyFreeImages(query, number);
            //Assert.IsType<SearchRoyaltyFreeImages200Response>(response);
        }
    }
}
