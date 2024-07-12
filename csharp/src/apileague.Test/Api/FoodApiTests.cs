/*
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
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
    ///  Class for testing FoodApi
    /// </summary>
    /// <remarks>
    /// This file is automatically generated by OpenAPI Generator (https://openapi-generator.tech).
    /// Please update the test case below to test the API endpoint.
    /// </remarks>
    public class FoodApiTests : IDisposable
    {
        private FoodApi instance;

        public FoodApiTests()
        {
            instance = new FoodApi();
        }

        public void Dispose()
        {
            // Cleanup when everything is done.
        }

        /// <summary>
        /// Test an instance of FoodApi
        /// </summary>
        [Fact]
        public void InstanceTest()
        {
            // TODO uncomment below to test 'IsType' FoodApi
            //Assert.IsType<FoodApi>(instance);
        }

        /// <summary>
        /// Test ComputeNutrition
        /// </summary>
        [Fact]
        public void ComputeNutritionTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string ingredients = null;
            //int? servings = null;
            //bool? reduceOils = null;
            //var response = instance.ComputeNutrition(ingredients, servings, reduceOils);
            //Assert.IsType<ComputeNutrition200Response>(response);
        }

        /// <summary>
        /// Test RetrieveRecipeInformation
        /// </summary>
        [Fact]
        public void RetrieveRecipeInformationTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //int id = null;
            //bool? addWinePairing = null;
            //var response = instance.RetrieveRecipeInformation(id, addWinePairing);
            //Assert.IsType<RetrieveRecipeInformation200Response>(response);
        }

        /// <summary>
        /// Test SearchRecipes
        /// </summary>
        [Fact]
        public void SearchRecipesTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //string? query = null;
            //string? cuisines = null;
            //string? excludeCuisines = null;
            //string? mealType = null;
            //string? diet = null;
            //string? intolerances = null;
            //string? equipment = null;
            //string? includeIngredients = null;
            //string? excludeIngredients = null;
            //bool? fillIngredients = null;
            //bool? addRecipeInformation = null;
            //int? maxTime = null;
            //int? minServings = null;
            //int? maxServings = null;
            //double? minCalories = null;
            //double? maxCalories = null;
            //double? minCarbs = null;
            //double? maxCarbs = null;
            //double? minProtein = null;
            //double? maxProtein = null;
            //double? minFat = null;
            //double? maxFat = null;
            //double? minSugar = null;
            //double? maxSugar = null;
            //double? minFiber = null;
            //double? maxFiber = null;
            //double? minFolate = null;
            //double? maxFolate = null;
            //double? minFolicAcid = null;
            //double? maxFolicAcid = null;
            //double? minIodine = null;
            //double? maxIodine = null;
            //double? minIron = null;
            //double? maxIron = null;
            //double? minZinc = null;
            //double? maxZinc = null;
            //double? minMagnesium = null;
            //double? maxMagnesium = null;
            //double? minManganese = null;
            //double? maxManganese = null;
            //double? minPhosphorus = null;
            //double? maxPhosphorus = null;
            //double? minPotassium = null;
            //double? maxPotassium = null;
            //double? minSodium = null;
            //double? maxSodium = null;
            //double? minSelenium = null;
            //double? maxSelenium = null;
            //double? minCopper = null;
            //double? maxCopper = null;
            //double? minCalcium = null;
            //double? maxCalcium = null;
            //double? minCholine = null;
            //double? maxCholine = null;
            //double? minCholesterol = null;
            //double? maxCholesterol = null;
            //double? minFluoride = null;
            //double? maxFluoride = null;
            //double? minAlcohol = null;
            //double? maxAlcohol = null;
            //double? minCaffeine = null;
            //double? maxCaffeine = null;
            //double? minSaturatedFat = null;
            //double? maxSaturatedFat = null;
            //double? minVitaminA = null;
            //double? maxVitaminA = null;
            //double? minVitaminC = null;
            //double? maxVitaminC = null;
            //double? minVitaminD = null;
            //double? maxVitaminD = null;
            //double? minVitaminE = null;
            //double? maxVitaminE = null;
            //double? minVitaminK = null;
            //double? maxVitaminK = null;
            //double? minVitaminB1 = null;
            //double? maxVitaminB1 = null;
            //double? minVitaminB2 = null;
            //double? maxVitaminB2 = null;
            //double? minVitaminB3 = null;
            //double? maxVitaminB3 = null;
            //double? minVitaminB5 = null;
            //double? maxVitaminB5 = null;
            //double? minVitaminB6 = null;
            //double? maxVitaminB6 = null;
            //double? minVitaminB12 = null;
            //double? maxVitaminB12 = null;
            //string? sort = null;
            //string? sortDirection = null;
            //int? offset = null;
            //int? number = null;
            //var response = instance.SearchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number);
            //Assert.IsType<SearchRecipes200Response>(response);
        }

        /// <summary>
        /// Test SearchRestaurants
        /// </summary>
        [Fact]
        public void SearchRestaurantsTest()
        {
            // TODO uncomment below to test the method and replace null with proper value
            //double lat = null;
            //double lon = null;
            //string? query = null;
            //int? distance = null;
            //double? budget = null;
            //double? minRating = null;
            //string? cuisine = null;
            //bool? isOpen = null;
            //int? page = null;
            //string? sort = null;
            //var response = instance.SearchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort);
            //Assert.IsType<SearchRestaurants200Response>(response);
        }
    }
}
