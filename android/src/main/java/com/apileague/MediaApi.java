/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague;

import com.apileague.client.ApiInvoker;
import com.apileague.client.ApiException;
import com.apileague.client.Pair;

import com.apileague.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import com.apileague.client.model.DetectMainImageColor200ResponseInner;
import java.util.*;
import com.apileague.client.model.SearchRoyaltyFreeImages200Response;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class MediaApi {
  String basePath = "https://api.apileague.com";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Detect Main Image Color
  * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
   * @param url The url of the image for which the colors should be detected.
   * @return List<DetectMainImageColor200ResponseInner>
  */
  public List<DetectMainImageColor200ResponseInner> detectMainImageColor (String url) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling detectMainImageColor",
        new ApiException(400, "Missing the required parameter 'url' when calling detectMainImageColor"));
    }

    // create path and map variables
    String path = "/detect-color";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (List<DetectMainImageColor200ResponseInner>) ApiInvoker.deserialize(localVarResponse, "array", DetectMainImageColor200ResponseInner.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Detect Main Image Color
   * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
   * @param url The url of the image for which the colors should be detected.
  */
  public void detectMainImageColor (String url, final Response.Listener<List<DetectMainImageColor200ResponseInner>> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling detectMainImageColor",
        new ApiException(400, "Missing the required parameter 'url' when calling detectMainImageColor"));
    }

    // create path and map variables
    String path = "/detect-color".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((List<DetectMainImageColor200ResponseInner>) ApiInvoker.deserialize(localVarResponse,  "array", DetectMainImageColor200ResponseInner.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Rescale Image
  * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
   * @param url The url of the image to be rescaled.
   * @param width The desired width of the rescaled image.
   * @param height The desired height of the rescaled image.
   * @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
   * @return Object
  */
  public Object rescaleImage (String url, Integer width, Integer height, Boolean crop) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'url' when calling rescaleImage"));
    }
    // verify the required parameter 'width' is set
    if (width == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'width' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'width' when calling rescaleImage"));
    }
    // verify the required parameter 'height' is set
    if (height == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'height' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'height' when calling rescaleImage"));
    }
    // verify the required parameter 'crop' is set
    if (crop == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'crop' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'crop' when calling rescaleImage"));
    }

    // create path and map variables
    String path = "/rescale-image";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "width", width));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "height", height));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "crop", crop));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (Object) ApiInvoker.deserialize(localVarResponse, "", Object.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Rescale Image
   * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
   * @param url The url of the image to be rescaled.   * @param width The desired width of the rescaled image.   * @param height The desired height of the rescaled image.   * @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  */
  public void rescaleImage (String url, Integer width, Integer height, Boolean crop, final Response.Listener<Object> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'url' is set
    if (url == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'url' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'url' when calling rescaleImage"));
    }
    // verify the required parameter 'width' is set
    if (width == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'width' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'width' when calling rescaleImage"));
    }
    // verify the required parameter 'height' is set
    if (height == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'height' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'height' when calling rescaleImage"));
    }
    // verify the required parameter 'crop' is set
    if (crop == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'crop' when calling rescaleImage",
        new ApiException(400, "Missing the required parameter 'crop' when calling rescaleImage"));
    }

    // create path and map variables
    String path = "/rescale-image".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "url", url));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "width", width));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "height", height));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "crop", crop));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((Object) ApiInvoker.deserialize(localVarResponse,  "", Object.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Search Royalty Free Images
  * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
   * @param query The search query.
   * @param number The number of images to return in range [1,10]
   * @return SearchRoyaltyFreeImages200Response
  */
  public SearchRoyaltyFreeImages200Response searchRoyaltyFreeImages (String query, Integer number) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'query' is set
    if (query == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'query' when calling searchRoyaltyFreeImages",
        new ApiException(400, "Missing the required parameter 'query' when calling searchRoyaltyFreeImages"));
    }

    // create path and map variables
    String path = "/search-images";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (SearchRoyaltyFreeImages200Response) ApiInvoker.deserialize(localVarResponse, "", SearchRoyaltyFreeImages200Response.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Search Royalty Free Images
   * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
   * @param query The search query.   * @param number The number of images to return in range [1,10]
  */
  public void searchRoyaltyFreeImages (String query, Integer number, final Response.Listener<SearchRoyaltyFreeImages200Response> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'query' is set
    if (query == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'query' when calling searchRoyaltyFreeImages",
        new ApiException(400, "Missing the required parameter 'query' when calling searchRoyaltyFreeImages"));
    }

    // create path and map variables
    String path = "/search-images".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "number", number));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "apiKey", "headerApiKey" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((SearchRoyaltyFreeImages200Response) ApiInvoker.deserialize(localVarResponse,  "", SearchRoyaltyFreeImages200Response.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}
