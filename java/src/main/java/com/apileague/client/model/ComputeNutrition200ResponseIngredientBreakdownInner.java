/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
 * ComputeNutrition200ResponseIngredientBreakdownInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-14T17:14:09.298081600+01:00[Europe/Berlin]")
public class ComputeNutrition200ResponseIngredientBreakdownInner {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private Integer amount;

  public static final String SERIALIZED_NAME_UNIT = "unit";
  @SerializedName(SERIALIZED_NAME_UNIT)
  private String unit;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NUTRIENTS = "nutrients";
  @SerializedName(SERIALIZED_NAME_NUTRIENTS)
  private List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients;

  public ComputeNutrition200ResponseIngredientBreakdownInner() {
  }

  public ComputeNutrition200ResponseIngredientBreakdownInner name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Get name
   * @return name
  **/
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public ComputeNutrition200ResponseIngredientBreakdownInner amount(Integer amount) {
    this.amount = amount;
    return this;
  }

   /**
   * Get amount
   * @return amount
  **/
  @javax.annotation.Nullable
  public Integer getAmount() {
    return amount;
  }

  public void setAmount(Integer amount) {
    this.amount = amount;
  }


  public ComputeNutrition200ResponseIngredientBreakdownInner unit(String unit) {
    this.unit = unit;
    return this;
  }

   /**
   * Get unit
   * @return unit
  **/
  @javax.annotation.Nullable
  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }


  public ComputeNutrition200ResponseIngredientBreakdownInner id(Integer id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @javax.annotation.Nullable
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public ComputeNutrition200ResponseIngredientBreakdownInner nutrients(List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients) {
    this.nutrients = nutrients;
    return this;
  }

  public ComputeNutrition200ResponseIngredientBreakdownInner addNutrientsItem(ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner nutrientsItem) {
    if (this.nutrients == null) {
      this.nutrients = new ArrayList<>();
    }
    this.nutrients.add(nutrientsItem);
    return this;
  }

   /**
   * Get nutrients
   * @return nutrients
  **/
  @javax.annotation.Nullable
  public List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> getNutrients() {
    return nutrients;
  }

  public void setNutrients(List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner> nutrients) {
    this.nutrients = nutrients;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputeNutrition200ResponseIngredientBreakdownInner computeNutrition200ResponseIngredientBreakdownInner = (ComputeNutrition200ResponseIngredientBreakdownInner) o;
    return Objects.equals(this.name, computeNutrition200ResponseIngredientBreakdownInner.name) &&
        Objects.equals(this.amount, computeNutrition200ResponseIngredientBreakdownInner.amount) &&
        Objects.equals(this.unit, computeNutrition200ResponseIngredientBreakdownInner.unit) &&
        Objects.equals(this.id, computeNutrition200ResponseIngredientBreakdownInner.id) &&
        Objects.equals(this.nutrients, computeNutrition200ResponseIngredientBreakdownInner.nutrients);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, amount, unit, id, nutrients);
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
    sb.append("class ComputeNutrition200ResponseIngredientBreakdownInner {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unit: ").append(toIndentedString(unit)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    nutrients: ").append(toIndentedString(nutrients)).append("\n");
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
    openapiFields.add("amount");
    openapiFields.add("unit");
    openapiFields.add("id");
    openapiFields.add("nutrients");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ComputeNutrition200ResponseIngredientBreakdownInner
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ComputeNutrition200ResponseIngredientBreakdownInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ComputeNutrition200ResponseIngredientBreakdownInner is not found in the empty JSON string", ComputeNutrition200ResponseIngredientBreakdownInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ComputeNutrition200ResponseIngredientBreakdownInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ComputeNutrition200ResponseIngredientBreakdownInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("unit") != null && !jsonObj.get("unit").isJsonNull()) && !jsonObj.get("unit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit").toString()));
      }
      if (jsonObj.get("nutrients") != null && !jsonObj.get("nutrients").isJsonNull()) {
        JsonArray jsonArraynutrients = jsonObj.getAsJsonArray("nutrients");
        if (jsonArraynutrients != null) {
          // ensure the json data is an array
          if (!jsonObj.get("nutrients").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `nutrients` to be an array in the JSON string but got `%s`", jsonObj.get("nutrients").toString()));
          }

          // validate the optional field `nutrients` (array)
          for (int i = 0; i < jsonArraynutrients.size(); i++) {
            ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.validateJsonElement(jsonArraynutrients.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ComputeNutrition200ResponseIngredientBreakdownInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ComputeNutrition200ResponseIngredientBreakdownInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ComputeNutrition200ResponseIngredientBreakdownInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ComputeNutrition200ResponseIngredientBreakdownInner.class));

       return (TypeAdapter<T>) new TypeAdapter<ComputeNutrition200ResponseIngredientBreakdownInner>() {
           @Override
           public void write(JsonWriter out, ComputeNutrition200ResponseIngredientBreakdownInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ComputeNutrition200ResponseIngredientBreakdownInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ComputeNutrition200ResponseIngredientBreakdownInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ComputeNutrition200ResponseIngredientBreakdownInner
  * @throws IOException if the JSON string is invalid with respect to ComputeNutrition200ResponseIngredientBreakdownInner
  */
  public static ComputeNutrition200ResponseIngredientBreakdownInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ComputeNutrition200ResponseIngredientBreakdownInner.class);
  }

 /**
  * Convert an instance of ComputeNutrition200ResponseIngredientBreakdownInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

