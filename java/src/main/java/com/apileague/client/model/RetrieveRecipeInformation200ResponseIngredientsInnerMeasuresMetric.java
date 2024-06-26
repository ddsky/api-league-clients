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
 * RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric {
  public static final String SERIALIZED_NAME_UNIT_SHORT = "unit_short";
  @SerializedName(SERIALIZED_NAME_UNIT_SHORT)
  private String unitShort;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private BigDecimal amount;

  public static final String SERIALIZED_NAME_UNIT_LONG = "unit_long";
  @SerializedName(SERIALIZED_NAME_UNIT_LONG)
  private String unitLong;

  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric() {
  }

  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric unitShort(String unitShort) {
    this.unitShort = unitShort;
    return this;
  }

   /**
   * Get unitShort
   * @return unitShort
  **/
  @javax.annotation.Nullable
  public String getUnitShort() {
    return unitShort;
  }

  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
  }


  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric amount(BigDecimal amount) {
    this.amount = amount;
    return this;
  }

   /**
   * Get amount
   * @return amount
  **/
  @javax.annotation.Nullable
  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric unitLong(String unitLong) {
    this.unitLong = unitLong;
    return this;
  }

   /**
   * Get unitLong
   * @return unitLong
  **/
  @javax.annotation.Nullable
  public String getUnitLong() {
    return unitLong;
  }

  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric retrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric = (RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric) o;
    return Objects.equals(this.unitShort, retrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.unitShort) &&
        Objects.equals(this.amount, retrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.amount) &&
        Objects.equals(this.unitLong, retrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.unitLong);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(unitShort, amount, unitLong);
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
    sb.append("class RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric {\n");
    sb.append("    unitShort: ").append(toIndentedString(unitShort)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unitLong: ").append(toIndentedString(unitLong)).append("\n");
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
    openapiFields.add("unit_short");
    openapiFields.add("amount");
    openapiFields.add("unit_long");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric is not found in the empty JSON string", RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("unit_short") != null && !jsonObj.get("unit_short").isJsonNull()) && !jsonObj.get("unit_short").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit_short` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit_short").toString()));
      }
      if ((jsonObj.get("unit_long") != null && !jsonObj.get("unit_long").isJsonNull()) && !jsonObj.get("unit_long").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit_long` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit_long").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
  * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric
  */
  public static RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.class);
  }

 /**
  * Convert an instance of RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

