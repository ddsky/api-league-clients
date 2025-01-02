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
import com.apileague.client.model.ScoreTextAPI200ResponseInterestingnessSubscores;
import com.apileague.client.model.ScoreTextAPI200ResponseSkimmabilityMainscores;
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
 * ScoreTextAPI200ResponseInterestingness
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreTextAPI200ResponseInterestingness {
  public static final String SERIALIZED_NAME_MAINSCORES = "mainscores";
  @SerializedName(SERIALIZED_NAME_MAINSCORES)
  private ScoreTextAPI200ResponseSkimmabilityMainscores mainscores;

  public static final String SERIALIZED_NAME_SUBSCORES = "subscores";
  @SerializedName(SERIALIZED_NAME_SUBSCORES)
  private ScoreTextAPI200ResponseInterestingnessSubscores subscores;

  public ScoreTextAPI200ResponseInterestingness() {
  }

  public ScoreTextAPI200ResponseInterestingness mainscores(ScoreTextAPI200ResponseSkimmabilityMainscores mainscores) {
    this.mainscores = mainscores;
    return this;
  }

  /**
   * Get mainscores
   * @return mainscores
   */
  @javax.annotation.Nullable
  public ScoreTextAPI200ResponseSkimmabilityMainscores getMainscores() {
    return mainscores;
  }

  public void setMainscores(ScoreTextAPI200ResponseSkimmabilityMainscores mainscores) {
    this.mainscores = mainscores;
  }


  public ScoreTextAPI200ResponseInterestingness subscores(ScoreTextAPI200ResponseInterestingnessSubscores subscores) {
    this.subscores = subscores;
    return this;
  }

  /**
   * Get subscores
   * @return subscores
   */
  @javax.annotation.Nullable
  public ScoreTextAPI200ResponseInterestingnessSubscores getSubscores() {
    return subscores;
  }

  public void setSubscores(ScoreTextAPI200ResponseInterestingnessSubscores subscores) {
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
    ScoreTextAPI200ResponseInterestingness scoreTextAPI200ResponseInterestingness = (ScoreTextAPI200ResponseInterestingness) o;
    return Objects.equals(this.mainscores, scoreTextAPI200ResponseInterestingness.mainscores) &&
        Objects.equals(this.subscores, scoreTextAPI200ResponseInterestingness.subscores);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mainscores, subscores);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreTextAPI200ResponseInterestingness {\n");
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
   * @throws IOException if the JSON Element is invalid with respect to ScoreTextAPI200ResponseInterestingness
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreTextAPI200ResponseInterestingness.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreTextAPI200ResponseInterestingness is not found in the empty JSON string", ScoreTextAPI200ResponseInterestingness.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreTextAPI200ResponseInterestingness.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreTextAPI200ResponseInterestingness` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `mainscores`
      if (jsonObj.get("mainscores") != null && !jsonObj.get("mainscores").isJsonNull()) {
        ScoreTextAPI200ResponseSkimmabilityMainscores.validateJsonElement(jsonObj.get("mainscores"));
      }
      // validate the optional field `subscores`
      if (jsonObj.get("subscores") != null && !jsonObj.get("subscores").isJsonNull()) {
        ScoreTextAPI200ResponseInterestingnessSubscores.validateJsonElement(jsonObj.get("subscores"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreTextAPI200ResponseInterestingness.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreTextAPI200ResponseInterestingness' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreTextAPI200ResponseInterestingness> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreTextAPI200ResponseInterestingness.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreTextAPI200ResponseInterestingness>() {
           @Override
           public void write(JsonWriter out, ScoreTextAPI200ResponseInterestingness value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreTextAPI200ResponseInterestingness read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreTextAPI200ResponseInterestingness given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreTextAPI200ResponseInterestingness
   * @throws IOException if the JSON string is invalid with respect to ScoreTextAPI200ResponseInterestingness
   */
  public static ScoreTextAPI200ResponseInterestingness fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreTextAPI200ResponseInterestingness.class);
  }

  /**
   * Convert an instance of ScoreTextAPI200ResponseInterestingness to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

