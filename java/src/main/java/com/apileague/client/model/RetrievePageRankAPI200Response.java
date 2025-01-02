/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
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
 * RetrievePageRankAPI200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrievePageRankAPI200Response {
  public static final String SERIALIZED_NAME_PAGE_RANK = "page_rank";
  @SerializedName(SERIALIZED_NAME_PAGE_RANK)
  private BigDecimal pageRank;

  public static final String SERIALIZED_NAME_POSITION = "position";
  @SerializedName(SERIALIZED_NAME_POSITION)
  private Integer position;

  public static final String SERIALIZED_NAME_PERCENTILE = "percentile";
  @SerializedName(SERIALIZED_NAME_PERCENTILE)
  private BigDecimal percentile;

  public RetrievePageRankAPI200Response() {
  }

  public RetrievePageRankAPI200Response pageRank(BigDecimal pageRank) {
    this.pageRank = pageRank;
    return this;
  }

  /**
   * Get pageRank
   * @return pageRank
   */
  @javax.annotation.Nullable
  public BigDecimal getPageRank() {
    return pageRank;
  }

  public void setPageRank(BigDecimal pageRank) {
    this.pageRank = pageRank;
  }


  public RetrievePageRankAPI200Response position(Integer position) {
    this.position = position;
    return this;
  }

  /**
   * Get position
   * @return position
   */
  @javax.annotation.Nullable
  public Integer getPosition() {
    return position;
  }

  public void setPosition(Integer position) {
    this.position = position;
  }


  public RetrievePageRankAPI200Response percentile(BigDecimal percentile) {
    this.percentile = percentile;
    return this;
  }

  /**
   * Get percentile
   * @return percentile
   */
  @javax.annotation.Nullable
  public BigDecimal getPercentile() {
    return percentile;
  }

  public void setPercentile(BigDecimal percentile) {
    this.percentile = percentile;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrievePageRankAPI200Response retrievePageRankAPI200Response = (RetrievePageRankAPI200Response) o;
    return Objects.equals(this.pageRank, retrievePageRankAPI200Response.pageRank) &&
        Objects.equals(this.position, retrievePageRankAPI200Response.position) &&
        Objects.equals(this.percentile, retrievePageRankAPI200Response.percentile);
  }

  @Override
  public int hashCode() {
    return Objects.hash(pageRank, position, percentile);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrievePageRankAPI200Response {\n");
    sb.append("    pageRank: ").append(toIndentedString(pageRank)).append("\n");
    sb.append("    position: ").append(toIndentedString(position)).append("\n");
    sb.append("    percentile: ").append(toIndentedString(percentile)).append("\n");
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
    openapiFields.add("page_rank");
    openapiFields.add("position");
    openapiFields.add("percentile");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrievePageRankAPI200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrievePageRankAPI200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrievePageRankAPI200Response is not found in the empty JSON string", RetrievePageRankAPI200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrievePageRankAPI200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrievePageRankAPI200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrievePageRankAPI200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrievePageRankAPI200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrievePageRankAPI200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrievePageRankAPI200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrievePageRankAPI200Response>() {
           @Override
           public void write(JsonWriter out, RetrievePageRankAPI200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrievePageRankAPI200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrievePageRankAPI200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrievePageRankAPI200Response
   * @throws IOException if the JSON string is invalid with respect to RetrievePageRankAPI200Response
   */
  public static RetrievePageRankAPI200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrievePageRankAPI200Response.class);
  }

  /**
   * Convert an instance of RetrievePageRankAPI200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
