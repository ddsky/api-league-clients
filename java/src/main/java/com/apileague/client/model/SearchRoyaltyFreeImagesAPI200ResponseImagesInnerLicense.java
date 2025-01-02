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
import java.util.Arrays;
import org.openapitools.jackson.nullable.JsonNullable;

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
 * SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_LINK = "link";
  @SerializedName(SERIALIZED_NAME_LINK)
  private String link;

  public SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense() {
  }

  public SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense link(String link) {
    this.link = link;
    return this;
  }

  /**
   * Get link
   * @return link
   */
  @javax.annotation.Nullable
  public String getLink() {
    return link;
  }

  public void setLink(String link) {
    this.link = link;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense searchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense = (SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense) o;
    return Objects.equals(this.name, searchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.name) &&
        Objects.equals(this.link, searchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.link);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, link);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    link: ").append(toIndentedString(link)).append("\n");
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
    openapiFields.add("name");
    openapiFields.add("link");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense is not found in the empty JSON string", SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("link") != null && !jsonObj.get("link").isJsonNull()) && !jsonObj.get("link").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `link` to be a primitive type in the JSON string but got `%s`", jsonObj.get("link").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense>() {
           @Override
           public void write(JsonWriter out, SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
   * @throws IOException if the JSON string is invalid with respect to SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense
   */
  public static SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.class);
  }

  /**
   * Convert an instance of SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

