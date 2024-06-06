/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
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
    ///  Class for testing BooksApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class BooksApiTests : IDisposable
    {
        private BooksApi instance;

        public BooksApiTests()
        {
            instance = new BooksApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of BooksApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' BooksApi
            //Assert.IsType<BooksApi>(instance);
        }

        /// <summary>
        /// Test FindSimilarBooks
        /// </summary>
        [Fact]
        public void FindSimilarBooksTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //int? number = null;
            //var response = instance.FindSimilarBooks(id, number);
            //Assert.IsType<FindSimilarBooks200Response>(response);
        }

        /// <summary>
        /// Test SearchBooks
        /// </summary>
        [Fact]
        public void SearchBooksTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? query = null;
            //int? earliestPublishYear = null;
            //int? latestPublishYear = null;
            //double? minRating = null;
            //double? maxRating = null;
            //string? genres = null;
            //string? authors = null;
            //string? isbn = null;
            //string? oclc = null;
            //string? sort = null;
            //string? sortDirection = null;
            //bool? groupResults = null;
            //int? offset = null;
            //int? number = null;
            //var response = instance.SearchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
            //Assert.IsType<SearchBooks200Response>(response);
        }
    }
}
