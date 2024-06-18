/*
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


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.SearchMemes200ResponseMemesInner;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
 * SearchMemes200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class SearchMemes200Response {
  public static final String SERIALIZED_NAME_MEMES = "memes";
  @SerializedName(SERIALIZED_NAME_MEMES)
  private List<SearchMemes200ResponseMemesInner> memes = new ArrayList<>();

  public static final String SERIALIZED_NAME_AVAILABLE = "available";
  @SerializedName(SERIALIZED_NAME_AVAILABLE)
  private Integer available;

  public SearchMemes200Response() {
  }

  public SearchMemes200Response memes(List<SearchMemes200ResponseMemesInner> memes) {
    this.memes = memes;
    return this;
  }

  public SearchMemes200Response addMemesItem(SearchMemes200ResponseMemesInner memesItem) {
    if (this.memes == null) {
      this.memes = new ArrayList<>();
    }
    this.memes.add(memesItem);
    return this;
  }

   /**
   * Get memes
   * @return memes
  **/
  @javax.annotation.Nullable
  public List<SearchMemes200ResponseMemesInner> getMemes() {
    return memes;
  }

  public void setMemes(List<SearchMemes200ResponseMemesInner> memes) {
    this.memes = memes;
  }


  public SearchMemes200Response available(Integer available) {
    this.available = available;
    return this;
  }

   /**
   * Get available
   * @return available
  **/
  @javax.annotation.Nullable
  public Integer getAvailable() {
    return available;
  }

  public void setAvailable(Integer available) {
    this.available = available;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchMemes200Response searchMemes200Response = (SearchMemes200Response) o;
    return Objects.equals(this.memes, searchMemes200Response.memes) &&
        Objects.equals(this.available, searchMemes200Response.available);
  }

  @Override
  public int hashCode() {
    return Objects.hash(memes, available);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchMemes200Response {\n");
    sb.append("    memes: ").append(toIndentedString(memes)).append("\n");
    sb.append("    available: ").append(toIndentedString(available)).append("\n");
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
    openapiFields.add("memes");
    openapiFields.add("available");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SearchMemes200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchMemes200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchMemes200Response is not found in the empty JSON string", SearchMemes200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchMemes200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchMemes200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("memes") != null && !jsonObj.get("memes").isJsonNull()) {
        JsonArray jsonArraymemes = jsonObj.getAsJsonArray("memes");
        if (jsonArraymemes != null) {
          // ensure the json data is an array
          if (!jsonObj.get("memes").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `memes` to be an array in the JSON string but got `%s`", jsonObj.get("memes").toString()));
          }

          // validate the optional field `memes` (array)
          for (int i = 0; i < jsonArraymemes.size(); i++) {
            SearchMemes200ResponseMemesInner.validateJsonElement(jsonArraymemes.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchMemes200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchMemes200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchMemes200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchMemes200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchMemes200Response>() {
           @Override
           public void write(JsonWriter out, SearchMemes200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchMemes200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchMemes200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchMemes200Response
  * @throws IOException if the JSON string is invalid with respect to SearchMemes200Response
  */
  public static SearchMemes200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchMemes200Response.class);
  }

 /**
  * Convert an instance of SearchMemes200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

