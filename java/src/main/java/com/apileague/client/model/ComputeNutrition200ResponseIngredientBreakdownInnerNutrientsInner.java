/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
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
 * ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_PERCENT_OF_DAILY_NEEDS = "percent_of_daily_needs";
  @SerializedName(SERIALIZED_NAME_PERCENT_OF_DAILY_NEEDS)
  private Integer percentOfDailyNeeds;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private Integer amount;

  public static final String SERIALIZED_NAME_UNIT = "unit";
  @SerializedName(SERIALIZED_NAME_UNIT)
  private String unit;

  public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner() {
  }

  public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner name(String name) {
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


  public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner percentOfDailyNeeds(Integer percentOfDailyNeeds) {
    this.percentOfDailyNeeds = percentOfDailyNeeds;
    return this;
  }

  /**
   * Get percentOfDailyNeeds
   * @return percentOfDailyNeeds
   */
  @javax.annotation.Nullable
  public Integer getPercentOfDailyNeeds() {
    return percentOfDailyNeeds;
  }

  public void setPercentOfDailyNeeds(Integer percentOfDailyNeeds) {
    this.percentOfDailyNeeds = percentOfDailyNeeds;
  }


  public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner amount(Integer amount) {
    this.amount = amount;
    return this;
  }

  /**
   * Get amount
   * @return amount
   */
  @javax.annotation.Nullable
  public Integer getAmount() {
    return amount;
  }

  public void setAmount(Integer amount) {
    this.amount = amount;
  }


  public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner unit(String unit) {
    this.unit = unit;
    return this;
  }

  /**
   * Get unit
   * @return unit
   */
  @javax.annotation.Nullable
  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner = (ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner) o;
    return Objects.equals(this.name, computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.name) &&
        Objects.equals(this.percentOfDailyNeeds, computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.percentOfDailyNeeds) &&
        Objects.equals(this.amount, computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.amount) &&
        Objects.equals(this.unit, computeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.unit);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, percentOfDailyNeeds, amount, unit);
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
    sb.append("class ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    percentOfDailyNeeds: ").append(toIndentedString(percentOfDailyNeeds)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unit: ").append(toIndentedString(unit)).append("\n");
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
    openapiFields.add("percent_of_daily_needs");
    openapiFields.add("amount");
    openapiFields.add("unit");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner is not found in the empty JSON string", ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("unit") != null && !jsonObj.get("unit").isJsonNull()) && !jsonObj.get("unit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>() {
           @Override
           public void write(JsonWriter out, ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
   * @throws IOException if the JSON string is invalid with respect to ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
   */
  public static ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.class);
  }

  /**
   * Convert an instance of ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

