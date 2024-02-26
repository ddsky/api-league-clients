using System;
using System.Collections.Generic;
using RestSharp;
using Org.OpenAPITools.Client;
using com.apileague.client.model;

namespace com.apileague
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface IMediaApi
    {
        /// <summary>
        /// Detect Main Image Color Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
        /// </summary>
        /// <param name="url">The url of the image for which the colors should be detected.</param>
        /// <returns>List&lt;InlineResponse20029&gt;</returns>
        List<InlineResponse20029> DetectMainImageColor (string url);
        /// <summary>
        /// Rescale Image Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
        /// </summary>
        /// <param name="url">The url of the image to be rescaled.</param>
        /// <param name="width">The desired width of the rescaled image.</param>
        /// <param name="height">The desired height of the rescaled image.</param>
        /// <param name="crop">Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.</param>
        /// <returns>Object</returns>
        Object RescaleImage (string url, int? width, int? height, bool? crop);
        /// <summary>
        /// Search Royalty Free Images Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="number">The number of images to return in range [1,10]</param>
        /// <returns>InlineResponse20028</returns>
        InlineResponse20028 SearchRoyaltyFreeImages (string query, int? number);
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class MediaApi : IMediaApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MediaApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public MediaApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient;
            else
                this.ApiClient = apiClient;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MediaApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MediaApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }

        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}

        /// <summary>
        /// Detect Main Image Color Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
        /// </summary>
        /// <param name="url">The url of the image for which the colors should be detected.</param>
        /// <returns>List&lt;InlineResponse20029&gt;</returns>
        public List<InlineResponse20029> DetectMainImageColor (string url)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling DetectMainImageColor");
            

            var path = "/detect-color";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectMainImageColor: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DetectMainImageColor: " + response.ErrorMessage, response.ErrorMessage);

            return (List<InlineResponse20029>) ApiClient.Deserialize(response.Content, typeof(List<InlineResponse20029>), response.Headers);
        }

        /// <summary>
        /// Rescale Image Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
        /// </summary>
        /// <param name="url">The url of the image to be rescaled.</param>
        /// <param name="width">The desired width of the rescaled image.</param>
        /// <param name="height">The desired height of the rescaled image.</param>
        /// <param name="crop">Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.</param>
        /// <returns>Object</returns>
        public Object RescaleImage (string url, int? width, int? height, bool? crop)
        {
            
            // verify the required parameter 'url' is set
            if (url == null) throw new ApiException(400, "Missing required parameter 'url' when calling RescaleImage");
            
            // verify the required parameter 'width' is set
            if (width == null) throw new ApiException(400, "Missing required parameter 'width' when calling RescaleImage");
            
            // verify the required parameter 'height' is set
            if (height == null) throw new ApiException(400, "Missing required parameter 'height' when calling RescaleImage");
            
            // verify the required parameter 'crop' is set
            if (crop == null) throw new ApiException(400, "Missing required parameter 'crop' when calling RescaleImage");
            

            var path = "/rescale-image";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (url != null) queryParams.Add("url", ApiClient.ParameterToString(url)); // query parameter
 if (width != null) queryParams.Add("width", ApiClient.ParameterToString(width)); // query parameter
 if (height != null) queryParams.Add("height", ApiClient.ParameterToString(height)); // query parameter
 if (crop != null) queryParams.Add("crop", ApiClient.ParameterToString(crop)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling RescaleImage: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling RescaleImage: " + response.ErrorMessage, response.ErrorMessage);

            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }

        /// <summary>
        /// Search Royalty Free Images Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
        /// </summary>
        /// <param name="query">The search query.</param>
        /// <param name="number">The number of images to return in range [1,10]</param>
        /// <returns>InlineResponse20028</returns>
        public InlineResponse20028 SearchRoyaltyFreeImages (string query, int? number)
        {
            
            // verify the required parameter 'query' is set
            if (query == null) throw new ApiException(400, "Missing required parameter 'query' when calling SearchRoyaltyFreeImages");
            

            var path = "/search-images";
            path = path.Replace("{format}", "json");
            
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;

             if (query != null) queryParams.Add("query", ApiClient.ParameterToString(query)); // query parameter
 if (number != null) queryParams.Add("number", ApiClient.ParameterToString(number)); // query parameter
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKey", "headerApiKey" };

            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);

            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRoyaltyFreeImages: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling SearchRoyaltyFreeImages: " + response.ErrorMessage, response.ErrorMessage);

            return (InlineResponse20028) ApiClient.Deserialize(response.Content, typeof(InlineResponse20028), response.Headers);
        }

    }
}
