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
import com.apileague.client.model.ExtractEntitiesAPI200ResponseEntitiesInner;
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
 * ExtractEntitiesAPI200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ExtractEntitiesAPI200Response {
  public static final String SERIALIZED_NAME_ENTITIES = "entities";
  @SerializedName(SERIALIZED_NAME_ENTITIES)
  private List<ExtractEntitiesAPI200ResponseEntitiesInner> entities = new ArrayList<>();

  public ExtractEntitiesAPI200Response() {
  }

  public ExtractEntitiesAPI200Response entities(List<ExtractEntitiesAPI200ResponseEntitiesInner> entities) {
    this.entities = entities;
    return this;
  }

  public ExtractEntitiesAPI200Response addEntitiesItem(ExtractEntitiesAPI200ResponseEntitiesInner entitiesItem) {
    if (this.entities == null) {
      this.entities = new ArrayList<>();
    }
    this.entities.add(entitiesItem);
    return this;
  }

  /**
   * Get entities
   * @return entities
   */
  @javax.annotation.Nullable
  public List<ExtractEntitiesAPI200ResponseEntitiesInner> getEntities() {
    return entities;
  }

  public void setEntities(List<ExtractEntitiesAPI200ResponseEntitiesInner> entities) {
    this.entities = entities;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractEntitiesAPI200Response extractEntitiesAPI200Response = (ExtractEntitiesAPI200Response) o;
    return Objects.equals(this.entities, extractEntitiesAPI200Response.entities);
  }

  @Override
  public int hashCode() {
    return Objects.hash(entities);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractEntitiesAPI200Response {\n");
    sb.append("    entities: ").append(toIndentedString(entities)).append("\n");
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
    openapiFields.add("entities");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ExtractEntitiesAPI200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractEntitiesAPI200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractEntitiesAPI200Response is not found in the empty JSON string", ExtractEntitiesAPI200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractEntitiesAPI200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractEntitiesAPI200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("entities") != null && !jsonObj.get("entities").isJsonNull()) {
        JsonArray jsonArrayentities = jsonObj.getAsJsonArray("entities");
        if (jsonArrayentities != null) {
          // ensure the json data is an array
          if (!jsonObj.get("entities").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `entities` to be an array in the JSON string but got `%s`", jsonObj.get("entities").toString()));
          }

          // validate the optional field `entities` (array)
          for (int i = 0; i < jsonArrayentities.size(); i++) {
            ExtractEntitiesAPI200ResponseEntitiesInner.validateJsonElement(jsonArrayentities.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractEntitiesAPI200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractEntitiesAPI200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractEntitiesAPI200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractEntitiesAPI200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractEntitiesAPI200Response>() {
           @Override
           public void write(JsonWriter out, ExtractEntitiesAPI200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractEntitiesAPI200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ExtractEntitiesAPI200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ExtractEntitiesAPI200Response
   * @throws IOException if the JSON string is invalid with respect to ExtractEntitiesAPI200Response
   */
  public static ExtractEntitiesAPI200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractEntitiesAPI200Response.class);
  }

  /**
   * Convert an instance of ExtractEntitiesAPI200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
