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
import com.apileague.client.model.SearchRoyaltyFreeImages200ResponseImagesInner;
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
 * SearchRoyaltyFreeImages200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class SearchRoyaltyFreeImages200Response {
  public static final String SERIALIZED_NAME_IMAGES = "images";
  @SerializedName(SERIALIZED_NAME_IMAGES)
  private List<SearchRoyaltyFreeImages200ResponseImagesInner> images = new ArrayList<>();

  public SearchRoyaltyFreeImages200Response() {
  }

  public SearchRoyaltyFreeImages200Response images(List<SearchRoyaltyFreeImages200ResponseImagesInner> images) {
    this.images = images;
    return this;
  }

  public SearchRoyaltyFreeImages200Response addImagesItem(SearchRoyaltyFreeImages200ResponseImagesInner imagesItem) {
    if (this.images == null) {
      this.images = new ArrayList<>();
    }
    this.images.add(imagesItem);
    return this;
  }

   /**
   * Get images
   * @return images
  **/
  @javax.annotation.Nullable
  public List<SearchRoyaltyFreeImages200ResponseImagesInner> getImages() {
    return images;
  }

  public void setImages(List<SearchRoyaltyFreeImages200ResponseImagesInner> images) {
    this.images = images;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRoyaltyFreeImages200Response searchRoyaltyFreeImages200Response = (SearchRoyaltyFreeImages200Response) o;
    return Objects.equals(this.images, searchRoyaltyFreeImages200Response.images);
  }

  @Override
  public int hashCode() {
    return Objects.hash(images);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRoyaltyFreeImages200Response {\n");
    sb.append("    images: ").append(toIndentedString(images)).append("\n");
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
    openapiFields.add("images");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SearchRoyaltyFreeImages200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRoyaltyFreeImages200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRoyaltyFreeImages200Response is not found in the empty JSON string", SearchRoyaltyFreeImages200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRoyaltyFreeImages200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRoyaltyFreeImages200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("images") != null && !jsonObj.get("images").isJsonNull()) {
        JsonArray jsonArrayimages = jsonObj.getAsJsonArray("images");
        if (jsonArrayimages != null) {
          // ensure the json data is an array
          if (!jsonObj.get("images").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `images` to be an array in the JSON string but got `%s`", jsonObj.get("images").toString()));
          }

          // validate the optional field `images` (array)
          for (int i = 0; i < jsonArrayimages.size(); i++) {
            SearchRoyaltyFreeImages200ResponseImagesInner.validateJsonElement(jsonArrayimages.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRoyaltyFreeImages200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRoyaltyFreeImages200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRoyaltyFreeImages200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRoyaltyFreeImages200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRoyaltyFreeImages200Response>() {
           @Override
           public void write(JsonWriter out, SearchRoyaltyFreeImages200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRoyaltyFreeImages200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchRoyaltyFreeImages200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchRoyaltyFreeImages200Response
  * @throws IOException if the JSON string is invalid with respect to SearchRoyaltyFreeImages200Response
  */
  public static SearchRoyaltyFreeImages200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRoyaltyFreeImages200Response.class);
  }

 /**
  * Convert an instance of SearchRoyaltyFreeImages200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

