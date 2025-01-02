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
import com.apileague.client.model.ScoreTextAPI200ResponseReadabilityMainscores;
import com.apileague.client.model.ScoreTextAPI200ResponseStyleSubscores;
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
 * ScoreTextAPI200ResponseStyle
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreTextAPI200ResponseStyle {
  public static final String SERIALIZED_NAME_MAINSCORES = "mainscores";
  @SerializedName(SERIALIZED_NAME_MAINSCORES)
  private ScoreTextAPI200ResponseReadabilityMainscores mainscores;

  public static final String SERIALIZED_NAME_SUBSCORES = "subscores";
  @SerializedName(SERIALIZED_NAME_SUBSCORES)
  private ScoreTextAPI200ResponseStyleSubscores subscores;

  public ScoreTextAPI200ResponseStyle() {
  }

  public ScoreTextAPI200ResponseStyle mainscores(ScoreTextAPI200ResponseReadabilityMainscores mainscores) {
    this.mainscores = mainscores;
    return this;
  }

  /**
   * Get mainscores
   * @return mainscores
   */
  @javax.annotation.Nullable
  public ScoreTextAPI200ResponseReadabilityMainscores getMainscores() {
    return mainscores;
  }

  public void setMainscores(ScoreTextAPI200ResponseReadabilityMainscores mainscores) {
    this.mainscores = mainscores;
  }


  public ScoreTextAPI200ResponseStyle subscores(ScoreTextAPI200ResponseStyleSubscores subscores) {
    this.subscores = subscores;
    return this;
  }

  /**
   * Get subscores
   * @return subscores
   */
  @javax.annotation.Nullable
  public ScoreTextAPI200ResponseStyleSubscores getSubscores() {
    return subscores;
  }

  public void setSubscores(ScoreTextAPI200ResponseStyleSubscores subscores) {
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
    ScoreTextAPI200ResponseStyle scoreTextAPI200ResponseStyle = (ScoreTextAPI200ResponseStyle) o;
    return Objects.equals(this.mainscores, scoreTextAPI200ResponseStyle.mainscores) &&
        Objects.equals(this.subscores, scoreTextAPI200ResponseStyle.subscores);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mainscores, subscores);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreTextAPI200ResponseStyle {\n");
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
   * @throws IOException if the JSON Element is invalid with respect to ScoreTextAPI200ResponseStyle
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreTextAPI200ResponseStyle.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreTextAPI200ResponseStyle is not found in the empty JSON string", ScoreTextAPI200ResponseStyle.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreTextAPI200ResponseStyle.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreTextAPI200ResponseStyle` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `mainscores`
      if (jsonObj.get("mainscores") != null && !jsonObj.get("mainscores").isJsonNull()) {
        ScoreTextAPI200ResponseReadabilityMainscores.validateJsonElement(jsonObj.get("mainscores"));
      }
      // validate the optional field `subscores`
      if (jsonObj.get("subscores") != null && !jsonObj.get("subscores").isJsonNull()) {
        ScoreTextAPI200ResponseStyleSubscores.validateJsonElement(jsonObj.get("subscores"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreTextAPI200ResponseStyle.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreTextAPI200ResponseStyle' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreTextAPI200ResponseStyle> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreTextAPI200ResponseStyle.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreTextAPI200ResponseStyle>() {
           @Override
           public void write(JsonWriter out, ScoreTextAPI200ResponseStyle value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreTextAPI200ResponseStyle read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreTextAPI200ResponseStyle given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreTextAPI200ResponseStyle
   * @throws IOException if the JSON string is invalid with respect to ScoreTextAPI200ResponseStyle
   */
  public static ScoreTextAPI200ResponseStyle fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreTextAPI200ResponseStyle.class);
  }

  /**
   * Convert an instance of ScoreTextAPI200ResponseStyle to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
