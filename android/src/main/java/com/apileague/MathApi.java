/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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

import com.apileague.client.model.ConvertUnits200Response;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class MathApi {
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
  * Convert Units
  * Convert units from one to another. The API returns the amount and the unit of the target unit.
   * @param sourceAmount The source amount.
   * @param sourceUnit The source unit.
   * @param targetUnit The unit to which should be converted.
   * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
   * @return ConvertUnits200Response
  */
  public ConvertUnits200Response convertUnits (Double sourceAmount, String sourceUnit, String targetUnit, String foodName) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'sourceAmount' is set
    if (sourceAmount == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'sourceAmount' when calling convertUnits",
        new ApiException(400, "Missing the required parameter 'sourceAmount' when calling convertUnits"));
    }
    // verify the required parameter 'sourceUnit' is set
    if (sourceUnit == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'sourceUnit' when calling convertUnits",
        new ApiException(400, "Missing the required parameter 'sourceUnit' when calling convertUnits"));
    }
    // verify the required parameter 'targetUnit' is set
    if (targetUnit == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'targetUnit' when calling convertUnits",
        new ApiException(400, "Missing the required parameter 'targetUnit' when calling convertUnits"));
    }

    // create path and map variables
    String path = "/convert-units";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-amount", sourceAmount));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-unit", sourceUnit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "target-unit", targetUnit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "food-name", foodName));
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
         return (ConvertUnits200Response) ApiInvoker.deserialize(localVarResponse, "", ConvertUnits200Response.class);
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
   * Convert Units
   * Convert units from one to another. The API returns the amount and the unit of the target unit.
   * @param sourceAmount The source amount.   * @param sourceUnit The source unit.   * @param targetUnit The unit to which should be converted.   * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
  */
  public void convertUnits (Double sourceAmount, String sourceUnit, String targetUnit, String foodName, final Response.Listener<ConvertUnits200Response> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'sourceAmount' is set
    if (sourceAmount == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'sourceAmount' when calling convertUnits",
        new ApiException(400, "Missing the required parameter 'sourceAmount' when calling convertUnits"));
    }
    // verify the required parameter 'sourceUnit' is set
    if (sourceUnit == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'sourceUnit' when calling convertUnits",
        new ApiException(400, "Missing the required parameter 'sourceUnit' when calling convertUnits"));
    }
    // verify the required parameter 'targetUnit' is set
    if (targetUnit == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'targetUnit' when calling convertUnits",
        new ApiException(400, "Missing the required parameter 'targetUnit' when calling convertUnits"));
    }

    // create path and map variables
    String path = "/convert-units".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-amount", sourceAmount));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "source-unit", sourceUnit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "target-unit", targetUnit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "food-name", foodName));


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
              responseListener.onResponse((ConvertUnits200Response) ApiInvoker.deserialize(localVarResponse,  "", ConvertUnits200Response.class));
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
