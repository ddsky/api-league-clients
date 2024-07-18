/*
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


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.ScoreText200ResponseReadability;
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
 * ScoreReadability200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreReadability200Response {
  public static final String SERIALIZED_NAME_READABILITY = "readability";
  @SerializedName(SERIALIZED_NAME_READABILITY)
  private ScoreText200ResponseReadability readability;

  public ScoreReadability200Response() {
  }

  public ScoreReadability200Response readability(ScoreText200ResponseReadability readability) {
    this.readability = readability;
    return this;
  }

  /**
   * Get readability
   * @return readability
   */
  @javax.annotation.Nullable
  public ScoreText200ResponseReadability getReadability() {
    return readability;
  }

  public void setReadability(ScoreText200ResponseReadability readability) {
    this.readability = readability;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreReadability200Response scoreReadability200Response = (ScoreReadability200Response) o;
    return Objects.equals(this.readability, scoreReadability200Response.readability);
  }

  @Override
  public int hashCode() {
    return Objects.hash(readability);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreReadability200Response {\n");
    sb.append("    readability: ").append(toIndentedString(readability)).append("\n");
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
    openapiFields.add("readability");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ScoreReadability200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreReadability200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreReadability200Response is not found in the empty JSON string", ScoreReadability200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreReadability200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreReadability200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `readability`
      if (jsonObj.get("readability") != null && !jsonObj.get("readability").isJsonNull()) {
        ScoreText200ResponseReadability.validateJsonElement(jsonObj.get("readability"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreReadability200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreReadability200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreReadability200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreReadability200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreReadability200Response>() {
           @Override
           public void write(JsonWriter out, ScoreReadability200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreReadability200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreReadability200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreReadability200Response
   * @throws IOException if the JSON string is invalid with respect to ScoreReadability200Response
   */
  public static ScoreReadability200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreReadability200Response.class);
  }

  /**
   * Convert an instance of ScoreReadability200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

