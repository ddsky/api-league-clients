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
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing;
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
 * SearchDrinksAPI200ResponseDrinksInnerNutrition
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchDrinksAPI200ResponseDrinksInnerNutrition {
  public static final String SERIALIZED_NAME_WEIGHT_PER_SERVING = "weight_per_serving";
  @SerializedName(SERIALIZED_NAME_WEIGHT_PER_SERVING)
  private SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing weightPerServing;

  public static final String SERIALIZED_NAME_CALORIC_BREAKDOWN = "caloric_breakdown";
  @SerializedName(SERIALIZED_NAME_CALORIC_BREAKDOWN)
  private SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown caloricBreakdown;

  public static final String SERIALIZED_NAME_FLAVONOIDS = "flavonoids";
  @SerializedName(SERIALIZED_NAME_FLAVONOIDS)
  private List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids = new ArrayList<>();

  public static final String SERIALIZED_NAME_INGREDIENT_BREAKDOWN = "ingredient_breakdown";
  @SerializedName(SERIALIZED_NAME_INGREDIENT_BREAKDOWN)
  private List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown = new ArrayList<>();

  public static final String SERIALIZED_NAME_PROPERTIES = "properties";
  @SerializedName(SERIALIZED_NAME_PROPERTIES)
  private List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> properties = new ArrayList<>();

  public static final String SERIALIZED_NAME_NUTRIENTS = "nutrients";
  @SerializedName(SERIALIZED_NAME_NUTRIENTS)
  private List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients = new ArrayList<>();

  public SearchDrinksAPI200ResponseDrinksInnerNutrition() {
  }

  public SearchDrinksAPI200ResponseDrinksInnerNutrition weightPerServing(SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
    return this;
  }

  /**
   * Get weightPerServing
   * @return weightPerServing
   */
  @javax.annotation.Nullable
  public SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing getWeightPerServing() {
    return weightPerServing;
  }

  public void setWeightPerServing(SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutrition caloricBreakdown(SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
    return this;
  }

  /**
   * Get caloricBreakdown
   * @return caloricBreakdown
   */
  @javax.annotation.Nullable
  public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown getCaloricBreakdown() {
    return caloricBreakdown;
  }

  public void setCaloricBreakdown(SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutrition flavonoids(List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids) {
    this.flavonoids = flavonoids;
    return this;
  }

  public SearchDrinksAPI200ResponseDrinksInnerNutrition addFlavonoidsItem(SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner flavonoidsItem) {
    if (this.flavonoids == null) {
      this.flavonoids = new ArrayList<>();
    }
    this.flavonoids.add(flavonoidsItem);
    return this;
  }

  /**
   * Get flavonoids
   * @return flavonoids
   */
  @javax.annotation.Nullable
  public List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> getFlavonoids() {
    return flavonoids;
  }

  public void setFlavonoids(List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> flavonoids) {
    this.flavonoids = flavonoids;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutrition ingredientBreakdown(List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown) {
    this.ingredientBreakdown = ingredientBreakdown;
    return this;
  }

  public SearchDrinksAPI200ResponseDrinksInnerNutrition addIngredientBreakdownItem(SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner ingredientBreakdownItem) {
    if (this.ingredientBreakdown == null) {
      this.ingredientBreakdown = new ArrayList<>();
    }
    this.ingredientBreakdown.add(ingredientBreakdownItem);
    return this;
  }

  /**
   * Get ingredientBreakdown
   * @return ingredientBreakdown
   */
  @javax.annotation.Nullable
  public List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner> getIngredientBreakdown() {
    return ingredientBreakdown;
  }

  public void setIngredientBreakdown(List<SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner> ingredientBreakdown) {
    this.ingredientBreakdown = ingredientBreakdown;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutrition properties(List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> properties) {
    this.properties = properties;
    return this;
  }

  public SearchDrinksAPI200ResponseDrinksInnerNutrition addPropertiesItem(SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner propertiesItem) {
    if (this.properties == null) {
      this.properties = new ArrayList<>();
    }
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
   */
  @javax.annotation.Nullable
  public List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> getProperties() {
    return properties;
  }

  public void setProperties(List<SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner> properties) {
    this.properties = properties;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutrition nutrients(List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients) {
    this.nutrients = nutrients;
    return this;
  }

  public SearchDrinksAPI200ResponseDrinksInnerNutrition addNutrientsItem(SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner nutrientsItem) {
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
  public List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> getNutrients() {
    return nutrients;
  }

  public void setNutrients(List<SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner> nutrients) {
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
    SearchDrinksAPI200ResponseDrinksInnerNutrition searchDrinksAPI200ResponseDrinksInnerNutrition = (SearchDrinksAPI200ResponseDrinksInnerNutrition) o;
    return Objects.equals(this.weightPerServing, searchDrinksAPI200ResponseDrinksInnerNutrition.weightPerServing) &&
        Objects.equals(this.caloricBreakdown, searchDrinksAPI200ResponseDrinksInnerNutrition.caloricBreakdown) &&
        Objects.equals(this.flavonoids, searchDrinksAPI200ResponseDrinksInnerNutrition.flavonoids) &&
        Objects.equals(this.ingredientBreakdown, searchDrinksAPI200ResponseDrinksInnerNutrition.ingredientBreakdown) &&
        Objects.equals(this.properties, searchDrinksAPI200ResponseDrinksInnerNutrition.properties) &&
        Objects.equals(this.nutrients, searchDrinksAPI200ResponseDrinksInnerNutrition.nutrients);
  }

  @Override
  public int hashCode() {
    return Objects.hash(weightPerServing, caloricBreakdown, flavonoids, ingredientBreakdown, properties, nutrients);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinksAPI200ResponseDrinksInnerNutrition {\n");
    sb.append("    weightPerServing: ").append(toIndentedString(weightPerServing)).append("\n");
    sb.append("    caloricBreakdown: ").append(toIndentedString(caloricBreakdown)).append("\n");
    sb.append("    flavonoids: ").append(toIndentedString(flavonoids)).append("\n");
    sb.append("    ingredientBreakdown: ").append(toIndentedString(ingredientBreakdown)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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
    openapiFields.add("weight_per_serving");
    openapiFields.add("caloric_breakdown");
    openapiFields.add("flavonoids");
    openapiFields.add("ingredient_breakdown");
    openapiFields.add("properties");
    openapiFields.add("nutrients");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchDrinksAPI200ResponseDrinksInnerNutrition
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchDrinksAPI200ResponseDrinksInnerNutrition.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchDrinksAPI200ResponseDrinksInnerNutrition is not found in the empty JSON string", SearchDrinksAPI200ResponseDrinksInnerNutrition.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchDrinksAPI200ResponseDrinksInnerNutrition.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchDrinksAPI200ResponseDrinksInnerNutrition` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `weight_per_serving`
      if (jsonObj.get("weight_per_serving") != null && !jsonObj.get("weight_per_serving").isJsonNull()) {
        SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.validateJsonElement(jsonObj.get("weight_per_serving"));
      }
      // validate the optional field `caloric_breakdown`
      if (jsonObj.get("caloric_breakdown") != null && !jsonObj.get("caloric_breakdown").isJsonNull()) {
        SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.validateJsonElement(jsonObj.get("caloric_breakdown"));
      }
      if (jsonObj.get("flavonoids") != null && !jsonObj.get("flavonoids").isJsonNull()) {
        JsonArray jsonArrayflavonoids = jsonObj.getAsJsonArray("flavonoids");
        if (jsonArrayflavonoids != null) {
          // ensure the json data is an array
          if (!jsonObj.get("flavonoids").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `flavonoids` to be an array in the JSON string but got `%s`", jsonObj.get("flavonoids").toString()));
          }

          // validate the optional field `flavonoids` (array)
          for (int i = 0; i < jsonArrayflavonoids.size(); i++) {
            SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.validateJsonElement(jsonArrayflavonoids.get(i));
          };
        }
      }
      if (jsonObj.get("ingredient_breakdown") != null && !jsonObj.get("ingredient_breakdown").isJsonNull()) {
        JsonArray jsonArrayingredientBreakdown = jsonObj.getAsJsonArray("ingredient_breakdown");
        if (jsonArrayingredientBreakdown != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ingredient_breakdown").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ingredient_breakdown` to be an array in the JSON string but got `%s`", jsonObj.get("ingredient_breakdown").toString()));
          }

          // validate the optional field `ingredient_breakdown` (array)
          for (int i = 0; i < jsonArrayingredientBreakdown.size(); i++) {
            SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.validateJsonElement(jsonArrayingredientBreakdown.get(i));
          };
        }
      }
      if (jsonObj.get("properties") != null && !jsonObj.get("properties").isJsonNull()) {
        JsonArray jsonArrayproperties = jsonObj.getAsJsonArray("properties");
        if (jsonArrayproperties != null) {
          // ensure the json data is an array
          if (!jsonObj.get("properties").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `properties` to be an array in the JSON string but got `%s`", jsonObj.get("properties").toString()));
          }

          // validate the optional field `properties` (array)
          for (int i = 0; i < jsonArrayproperties.size(); i++) {
            SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.validateJsonElement(jsonArrayproperties.get(i));
          };
        }
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
            SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.validateJsonElement(jsonArraynutrients.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchDrinksAPI200ResponseDrinksInnerNutrition.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchDrinksAPI200ResponseDrinksInnerNutrition' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchDrinksAPI200ResponseDrinksInnerNutrition> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchDrinksAPI200ResponseDrinksInnerNutrition.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchDrinksAPI200ResponseDrinksInnerNutrition>() {
           @Override
           public void write(JsonWriter out, SearchDrinksAPI200ResponseDrinksInnerNutrition value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchDrinksAPI200ResponseDrinksInnerNutrition read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchDrinksAPI200ResponseDrinksInnerNutrition given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchDrinksAPI200ResponseDrinksInnerNutrition
   * @throws IOException if the JSON string is invalid with respect to SearchDrinksAPI200ResponseDrinksInnerNutrition
   */
  public static SearchDrinksAPI200ResponseDrinksInnerNutrition fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchDrinksAPI200ResponseDrinksInnerNutrition.class);
  }

  /**
   * Convert an instance of SearchDrinksAPI200ResponseDrinksInnerNutrition to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

