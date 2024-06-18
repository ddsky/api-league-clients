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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
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
 * ConvertUnits200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class ConvertUnits200Response {
  public static final String SERIALIZED_NAME_TARGET_AMOUNT = "target_amount";
  @SerializedName(SERIALIZED_NAME_TARGET_AMOUNT)
  private BigDecimal targetAmount;

  public static final String SERIALIZED_NAME_TARGET_UNIT = "target_unit";
  @SerializedName(SERIALIZED_NAME_TARGET_UNIT)
  private String targetUnit;

  public ConvertUnits200Response() {
  }

  public ConvertUnits200Response targetAmount(BigDecimal targetAmount) {
    this.targetAmount = targetAmount;
    return this;
  }

   /**
   * Get targetAmount
   * @return targetAmount
  **/
  @javax.annotation.Nullable
  public BigDecimal getTargetAmount() {
    return targetAmount;
  }

  public void setTargetAmount(BigDecimal targetAmount) {
    this.targetAmount = targetAmount;
  }


  public ConvertUnits200Response targetUnit(String targetUnit) {
    this.targetUnit = targetUnit;
    return this;
  }

   /**
   * Get targetUnit
   * @return targetUnit
  **/
  @javax.annotation.Nullable
  public String getTargetUnit() {
    return targetUnit;
  }

  public void setTargetUnit(String targetUnit) {
    this.targetUnit = targetUnit;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ConvertUnits200Response convertUnits200Response = (ConvertUnits200Response) o;
    return Objects.equals(this.targetAmount, convertUnits200Response.targetAmount) &&
        Objects.equals(this.targetUnit, convertUnits200Response.targetUnit);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(targetAmount, targetUnit);
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
    sb.append("class ConvertUnits200Response {\n");
    sb.append("    targetAmount: ").append(toIndentedString(targetAmount)).append("\n");
    sb.append("    targetUnit: ").append(toIndentedString(targetUnit)).append("\n");
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
    openapiFields.add("target_amount");
    openapiFields.add("target_unit");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ConvertUnits200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ConvertUnits200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ConvertUnits200Response is not found in the empty JSON string", ConvertUnits200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ConvertUnits200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ConvertUnits200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("target_unit") != null && !jsonObj.get("target_unit").isJsonNull()) && !jsonObj.get("target_unit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `target_unit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("target_unit").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ConvertUnits200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ConvertUnits200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ConvertUnits200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ConvertUnits200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ConvertUnits200Response>() {
           @Override
           public void write(JsonWriter out, ConvertUnits200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ConvertUnits200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ConvertUnits200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ConvertUnits200Response
  * @throws IOException if the JSON string is invalid with respect to ConvertUnits200Response
  */
  public static ConvertUnits200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ConvertUnits200Response.class);
  }

 /**
  * Convert an instance of ConvertUnits200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

