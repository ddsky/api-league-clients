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
 * ExtractEntitiesAPI200ResponseEntitiesInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ExtractEntitiesAPI200ResponseEntitiesInner {
  public static final String SERIALIZED_NAME_START_POSITION = "start_position";
  @SerializedName(SERIALIZED_NAME_START_POSITION)
  private Integer startPosition;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_VALUE = "value";
  @SerializedName(SERIALIZED_NAME_VALUE)
  private String value;

  public static final String SERIALIZED_NAME_END_POSITION = "end_position";
  @SerializedName(SERIALIZED_NAME_END_POSITION)
  private Integer endPosition;

  public ExtractEntitiesAPI200ResponseEntitiesInner() {
  }

  public ExtractEntitiesAPI200ResponseEntitiesInner startPosition(Integer startPosition) {
    this.startPosition = startPosition;
    return this;
  }

  /**
   * Get startPosition
   * @return startPosition
   */
  @javax.annotation.Nullable
  public Integer getStartPosition() {
    return startPosition;
  }

  public void setStartPosition(Integer startPosition) {
    this.startPosition = startPosition;
  }


  public ExtractEntitiesAPI200ResponseEntitiesInner image(String image) {
    this.image = image;
    return this;
  }

  /**
   * Get image
   * @return image
   */
  @javax.annotation.Nullable
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public ExtractEntitiesAPI200ResponseEntitiesInner type(String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   */
  @javax.annotation.Nullable
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }


  public ExtractEntitiesAPI200ResponseEntitiesInner value(String value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
   */
  @javax.annotation.Nullable
  public String getValue() {
    return value;
  }

  public void setValue(String value) {
    this.value = value;
  }


  public ExtractEntitiesAPI200ResponseEntitiesInner endPosition(Integer endPosition) {
    this.endPosition = endPosition;
    return this;
  }

  /**
   * Get endPosition
   * @return endPosition
   */
  @javax.annotation.Nullable
  public Integer getEndPosition() {
    return endPosition;
  }

  public void setEndPosition(Integer endPosition) {
    this.endPosition = endPosition;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractEntitiesAPI200ResponseEntitiesInner extractEntitiesAPI200ResponseEntitiesInner = (ExtractEntitiesAPI200ResponseEntitiesInner) o;
    return Objects.equals(this.startPosition, extractEntitiesAPI200ResponseEntitiesInner.startPosition) &&
        Objects.equals(this.image, extractEntitiesAPI200ResponseEntitiesInner.image) &&
        Objects.equals(this.type, extractEntitiesAPI200ResponseEntitiesInner.type) &&
        Objects.equals(this.value, extractEntitiesAPI200ResponseEntitiesInner.value) &&
        Objects.equals(this.endPosition, extractEntitiesAPI200ResponseEntitiesInner.endPosition);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(startPosition, image, type, value, endPosition);
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
    sb.append("class ExtractEntitiesAPI200ResponseEntitiesInner {\n");
    sb.append("    startPosition: ").append(toIndentedString(startPosition)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    endPosition: ").append(toIndentedString(endPosition)).append("\n");
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
    openapiFields.add("start_position");
    openapiFields.add("image");
    openapiFields.add("type");
    openapiFields.add("value");
    openapiFields.add("end_position");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ExtractEntitiesAPI200ResponseEntitiesInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractEntitiesAPI200ResponseEntitiesInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractEntitiesAPI200ResponseEntitiesInner is not found in the empty JSON string", ExtractEntitiesAPI200ResponseEntitiesInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractEntitiesAPI200ResponseEntitiesInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractEntitiesAPI200ResponseEntitiesInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("image") != null && !jsonObj.get("image").isJsonNull()) && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      if ((jsonObj.get("type") != null && !jsonObj.get("type").isJsonNull()) && !jsonObj.get("type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("type").toString()));
      }
      if ((jsonObj.get("value") != null && !jsonObj.get("value").isJsonNull()) && !jsonObj.get("value").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `value` to be a primitive type in the JSON string but got `%s`", jsonObj.get("value").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractEntitiesAPI200ResponseEntitiesInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractEntitiesAPI200ResponseEntitiesInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractEntitiesAPI200ResponseEntitiesInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractEntitiesAPI200ResponseEntitiesInner.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractEntitiesAPI200ResponseEntitiesInner>() {
           @Override
           public void write(JsonWriter out, ExtractEntitiesAPI200ResponseEntitiesInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractEntitiesAPI200ResponseEntitiesInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ExtractEntitiesAPI200ResponseEntitiesInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ExtractEntitiesAPI200ResponseEntitiesInner
   * @throws IOException if the JSON string is invalid with respect to ExtractEntitiesAPI200ResponseEntitiesInner
   */
  public static ExtractEntitiesAPI200ResponseEntitiesInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractEntitiesAPI200ResponseEntitiesInner.class);
  }

  /**
   * Convert an instance of ExtractEntitiesAPI200ResponseEntitiesInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

