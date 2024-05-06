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
 * SingularizeWord200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class SingularizeWord200Response {
  public static final String SERIALIZED_NAME_ORIGINAL = "original";
  @SerializedName(SERIALIZED_NAME_ORIGINAL)
  private String original;

  public static final String SERIALIZED_NAME_SINGULAR = "singular";
  @SerializedName(SERIALIZED_NAME_SINGULAR)
  private String singular;

  public SingularizeWord200Response() {
  }

  public SingularizeWord200Response original(String original) {
    this.original = original;
    return this;
  }

   /**
   * Get original
   * @return original
  **/
  @javax.annotation.Nullable
  public String getOriginal() {
    return original;
  }

  public void setOriginal(String original) {
    this.original = original;
  }


  public SingularizeWord200Response singular(String singular) {
    this.singular = singular;
    return this;
  }

   /**
   * Get singular
   * @return singular
  **/
  @javax.annotation.Nullable
  public String getSingular() {
    return singular;
  }

  public void setSingular(String singular) {
    this.singular = singular;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SingularizeWord200Response singularizeWord200Response = (SingularizeWord200Response) o;
    return Objects.equals(this.original, singularizeWord200Response.original) &&
        Objects.equals(this.singular, singularizeWord200Response.singular);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(original, singular);
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
    sb.append("class SingularizeWord200Response {\n");
    sb.append("    original: ").append(toIndentedString(original)).append("\n");
    sb.append("    singular: ").append(toIndentedString(singular)).append("\n");
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
    openapiFields.add("original");
    openapiFields.add("singular");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SingularizeWord200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SingularizeWord200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SingularizeWord200Response is not found in the empty JSON string", SingularizeWord200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SingularizeWord200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SingularizeWord200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("original") != null && !jsonObj.get("original").isJsonNull()) && !jsonObj.get("original").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `original` to be a primitive type in the JSON string but got `%s`", jsonObj.get("original").toString()));
      }
      if ((jsonObj.get("singular") != null && !jsonObj.get("singular").isJsonNull()) && !jsonObj.get("singular").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `singular` to be a primitive type in the JSON string but got `%s`", jsonObj.get("singular").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SingularizeWord200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SingularizeWord200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SingularizeWord200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SingularizeWord200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SingularizeWord200Response>() {
           @Override
           public void write(JsonWriter out, SingularizeWord200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SingularizeWord200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SingularizeWord200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SingularizeWord200Response
  * @throws IOException if the JSON string is invalid with respect to SingularizeWord200Response
  */
  public static SingularizeWord200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SingularizeWord200Response.class);
  }

 /**
  * Convert an instance of SingularizeWord200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

