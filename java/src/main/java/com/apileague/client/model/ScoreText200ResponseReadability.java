/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.ScoreText200ResponseReadabilityMainscores;
import com.apileague.client.model.ScoreText200ResponseReadabilitySubscores;
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
 * ScoreText200ResponseReadability
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class ScoreText200ResponseReadability {
  public static final String SERIALIZED_NAME_MAINSCORES = "mainscores";
  @SerializedName(SERIALIZED_NAME_MAINSCORES)
  private ScoreText200ResponseReadabilityMainscores mainscores;

  public static final String SERIALIZED_NAME_SUBSCORES = "subscores";
  @SerializedName(SERIALIZED_NAME_SUBSCORES)
  private ScoreText200ResponseReadabilitySubscores subscores;

  public ScoreText200ResponseReadability() {
  }

  public ScoreText200ResponseReadability mainscores(ScoreText200ResponseReadabilityMainscores mainscores) {
    this.mainscores = mainscores;
    return this;
  }

   /**
   * Get mainscores
   * @return mainscores
  **/
  @javax.annotation.Nullable
  public ScoreText200ResponseReadabilityMainscores getMainscores() {
    return mainscores;
  }

  public void setMainscores(ScoreText200ResponseReadabilityMainscores mainscores) {
    this.mainscores = mainscores;
  }


  public ScoreText200ResponseReadability subscores(ScoreText200ResponseReadabilitySubscores subscores) {
    this.subscores = subscores;
    return this;
  }

   /**
   * Get subscores
   * @return subscores
  **/
  @javax.annotation.Nullable
  public ScoreText200ResponseReadabilitySubscores getSubscores() {
    return subscores;
  }

  public void setSubscores(ScoreText200ResponseReadabilitySubscores subscores) {
    this.subscores = subscores;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseReadability scoreText200ResponseReadability = (ScoreText200ResponseReadability) o;
    return Objects.equals(this.mainscores, scoreText200ResponseReadability.mainscores) &&
        Objects.equals(this.subscores, scoreText200ResponseReadability.subscores);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mainscores, subscores);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseReadability {\n");
    sb.append("    mainscores: ").append(toIndentedString(mainscores)).append("\n");
    sb.append("    subscores: ").append(toIndentedString(subscores)).append("\n");
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
    openapiFields.add("mainscores");
    openapiFields.add("subscores");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ScoreText200ResponseReadability
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreText200ResponseReadability.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreText200ResponseReadability is not found in the empty JSON string", ScoreText200ResponseReadability.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreText200ResponseReadability.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreText200ResponseReadability` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `mainscores`
      if (jsonObj.get("mainscores") != null && !jsonObj.get("mainscores").isJsonNull()) {
        ScoreText200ResponseReadabilityMainscores.validateJsonElement(jsonObj.get("mainscores"));
      }
      // validate the optional field `subscores`
      if (jsonObj.get("subscores") != null && !jsonObj.get("subscores").isJsonNull()) {
        ScoreText200ResponseReadabilitySubscores.validateJsonElement(jsonObj.get("subscores"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreText200ResponseReadability.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreText200ResponseReadability' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreText200ResponseReadability> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreText200ResponseReadability.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreText200ResponseReadability>() {
           @Override
           public void write(JsonWriter out, ScoreText200ResponseReadability value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreText200ResponseReadability read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ScoreText200ResponseReadability given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ScoreText200ResponseReadability
  * @throws IOException if the JSON string is invalid with respect to ScoreText200ResponseReadability
  */
  public static ScoreText200ResponseReadability fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreText200ResponseReadability.class);
  }

 /**
  * Convert an instance of ScoreText200ResponseReadability to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

