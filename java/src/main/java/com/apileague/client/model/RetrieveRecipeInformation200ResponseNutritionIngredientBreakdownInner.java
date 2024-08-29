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
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
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
 * RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private BigDecimal amount;

  public static final String SERIALIZED_NAME_UNIT = "unit";
  @SerializedName(SERIALIZED_NAME_UNIT)
  private String unit;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_NUTRIENTS = "nutrients";
  @SerializedName(SERIALIZED_NAME_NUTRIENTS)
  private List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> nutrients = new ArrayList<>();

  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner() {
  }

  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner name(String name) {
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


  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner amount(BigDecimal amount) {
    this.amount = amount;
    return this;
  }

  /**
   * Get amount
   * @return amount
   */
  @javax.annotation.Nullable
  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner unit(String unit) {
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


  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner id(Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nullable
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner nutrients(List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> nutrients) {
    this.nutrients = nutrients;
    return this;
  }

  public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner addNutrientsItem(SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner nutrientsItem) {
    if (this.nutrients == null) {
      this.nutrients = new ArrayList<>();
    }
    this.nutrients.add(nutrientsItem);
    return this;
  }

  /**
   * Get nutrients
   * @return nutrients
   */
  @javax.annotation.Nullable
  public List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> getNutrients() {
    return nutrients;
  }

  public void setNutrients(List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner> nutrients) {
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
    RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner = (RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner) o;
    return Objects.equals(this.name, retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.name) &&
        Objects.equals(this.amount, retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.amount) &&
        Objects.equals(this.unit, retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.unit) &&
        Objects.equals(this.id, retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.id) &&
        Objects.equals(this.nutrients, retrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.nutrients);
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
    sb.append("class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner {\n");
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
   * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner is not found in the empty JSON string", RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
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
            SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.validateJsonElement(jsonArraynutrients.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
   * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
   */
  public static RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.class);
  }

  /**
   * Convert an instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

