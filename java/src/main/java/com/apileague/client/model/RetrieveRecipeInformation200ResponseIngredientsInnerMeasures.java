/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Arrays;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.apileague.client.JSON;

/**
 * RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {
  public static final String SERIALIZED_NAME_METRIC = "metric";
  @SerializedName(SERIALIZED_NAME_METRIC)
  private RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric metric;

  public static final String SERIALIZED_NAME_US = "us";
  @SerializedName(SERIALIZED_NAME_US)
  private RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric us;

  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasures() {
  }

  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasures metric(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric metric) {
    this.metric = metric;
    return this;
  }

   /**
   * Get metric
   * @return metric
  **/
  @javax.annotation.Nullable
  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric getMetric() {
    return metric;
  }

  public void setMetric(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric metric) {
    this.metric = metric;
  }


  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasures us(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric us) {
    this.us = us;
    return this;
  }

   /**
   * Get us
   * @return us
  **/
  @javax.annotation.Nullable
  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric getUs() {
    return us;
  }

  public void setUs(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric us) {
    this.us = us;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseIngredientsInnerMeasures retrieveRecipeInformation200ResponseIngredientsInnerMeasures = (RetrieveRecipeInformation200ResponseIngredientsInnerMeasures) o;
    return Objects.equals(this.metric, retrieveRecipeInformation200ResponseIngredientsInnerMeasures.metric) &&
        Objects.equals(this.us, retrieveRecipeInformation200ResponseIngredientsInnerMeasures.us);
  }

  @Override
  public int hashCode() {
    return Objects.hash(metric, us);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseIngredientsInnerMeasures {\n");
    sb.append("    metric: ").append(toIndentedString(metric)).append("\n");
    sb.append("    us: ").append(toIndentedString(us)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("metric");
    openapiFields.add("us");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseIngredientsInnerMeasures is not found in the empty JSON string", RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseIngredientsInnerMeasures` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `metric`
      if (jsonObj.get("metric") != null && !jsonObj.get("metric").isJsonNull()) {
        RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.validateJsonElement(jsonObj.get("metric"));
      }
      // validate the optional field `us`
      if (jsonObj.get("us") != null && !jsonObj.get("us").isJsonNull()) {
        RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.validateJsonElement(jsonObj.get("us"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseIngredientsInnerMeasures' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseIngredientsInnerMeasures> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseIngredientsInnerMeasures>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseIngredientsInnerMeasures value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseIngredientsInnerMeasures read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasures given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
  * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
  */
  public static RetrieveRecipeInformation200ResponseIngredientsInnerMeasures fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.class);
  }

 /**
  * Convert an instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasures to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

