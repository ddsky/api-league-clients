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
import com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionWeightPerServing;
import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner;
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
 * ComputeNutrition200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-14T17:14:09.298081600+01:00[Europe/Berlin]")
public class ComputeNutrition200Response {
  public static final String SERIALIZED_NAME_NUTRIENTS = "nutrients";
  @SerializedName(SERIALIZED_NAME_NUTRIENTS)
  private List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients;

  public static final String SERIALIZED_NAME_PROPERTIES = "properties";
  @SerializedName(SERIALIZED_NAME_PROPERTIES)
  private List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties;

  public static final String SERIALIZED_NAME_FLAVONOIDS = "flavonoids";
  @SerializedName(SERIALIZED_NAME_FLAVONOIDS)
  private List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids;

  public static final String SERIALIZED_NAME_INGREDIENT_BREAKDOWN = "ingredient_breakdown";
  @SerializedName(SERIALIZED_NAME_INGREDIENT_BREAKDOWN)
  private List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown;

  public static final String SERIALIZED_NAME_CALORIC_BREAKDOWN = "caloric_breakdown";
  @SerializedName(SERIALIZED_NAME_CALORIC_BREAKDOWN)
  private RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown;

  public static final String SERIALIZED_NAME_WEIGHT_PER_SERVING = "weight_per_serving";
  @SerializedName(SERIALIZED_NAME_WEIGHT_PER_SERVING)
  private RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing;

  public ComputeNutrition200Response() {
  }

  public ComputeNutrition200Response nutrients(List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients) {
    this.nutrients = nutrients;
    return this;
  }

  public ComputeNutrition200Response addNutrientsItem(RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner nutrientsItem) {
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
  public List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> getNutrients() {
    return nutrients;
  }

  public void setNutrients(List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner> nutrients) {
    this.nutrients = nutrients;
  }


  public ComputeNutrition200Response properties(List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties) {
    this.properties = properties;
    return this;
  }

  public ComputeNutrition200Response addPropertiesItem(RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner propertiesItem) {
    if (this.properties == null) {
      this.properties = new ArrayList<>();
    }
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @javax.annotation.Nullable
  public List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> getProperties() {
    return properties;
  }

  public void setProperties(List<RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner> properties) {
    this.properties = properties;
  }


  public ComputeNutrition200Response flavonoids(List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids) {
    this.flavonoids = flavonoids;
    return this;
  }

  public ComputeNutrition200Response addFlavonoidsItem(SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner flavonoidsItem) {
    if (this.flavonoids == null) {
      this.flavonoids = new ArrayList<>();
    }
    this.flavonoids.add(flavonoidsItem);
    return this;
  }

   /**
   * Get flavonoids
   * @return flavonoids
  **/
  @javax.annotation.Nullable
  public List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> getFlavonoids() {
    return flavonoids;
  }

  public void setFlavonoids(List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner> flavonoids) {
    this.flavonoids = flavonoids;
  }


  public ComputeNutrition200Response ingredientBreakdown(List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown) {
    this.ingredientBreakdown = ingredientBreakdown;
    return this;
  }

  public ComputeNutrition200Response addIngredientBreakdownItem(ComputeNutrition200ResponseIngredientBreakdownInner ingredientBreakdownItem) {
    if (this.ingredientBreakdown == null) {
      this.ingredientBreakdown = new ArrayList<>();
    }
    this.ingredientBreakdown.add(ingredientBreakdownItem);
    return this;
  }

   /**
   * Get ingredientBreakdown
   * @return ingredientBreakdown
  **/
  @javax.annotation.Nullable
  public List<ComputeNutrition200ResponseIngredientBreakdownInner> getIngredientBreakdown() {
    return ingredientBreakdown;
  }

  public void setIngredientBreakdown(List<ComputeNutrition200ResponseIngredientBreakdownInner> ingredientBreakdown) {
    this.ingredientBreakdown = ingredientBreakdown;
  }


  public ComputeNutrition200Response caloricBreakdown(RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
    return this;
  }

   /**
   * Get caloricBreakdown
   * @return caloricBreakdown
  **/
  @javax.annotation.Nullable
  public RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown getCaloricBreakdown() {
    return caloricBreakdown;
  }

  public void setCaloricBreakdown(RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown caloricBreakdown) {
    this.caloricBreakdown = caloricBreakdown;
  }


  public ComputeNutrition200Response weightPerServing(RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
    return this;
  }

   /**
   * Get weightPerServing
   * @return weightPerServing
  **/
  @javax.annotation.Nullable
  public RetrieveRecipeInformation200ResponseNutritionWeightPerServing getWeightPerServing() {
    return weightPerServing;
  }

  public void setWeightPerServing(RetrieveRecipeInformation200ResponseNutritionWeightPerServing weightPerServing) {
    this.weightPerServing = weightPerServing;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputeNutrition200Response computeNutrition200Response = (ComputeNutrition200Response) o;
    return Objects.equals(this.nutrients, computeNutrition200Response.nutrients) &&
        Objects.equals(this.properties, computeNutrition200Response.properties) &&
        Objects.equals(this.flavonoids, computeNutrition200Response.flavonoids) &&
        Objects.equals(this.ingredientBreakdown, computeNutrition200Response.ingredientBreakdown) &&
        Objects.equals(this.caloricBreakdown, computeNutrition200Response.caloricBreakdown) &&
        Objects.equals(this.weightPerServing, computeNutrition200Response.weightPerServing);
  }

  @Override
  public int hashCode() {
    return Objects.hash(nutrients, properties, flavonoids, ingredientBreakdown, caloricBreakdown, weightPerServing);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComputeNutrition200Response {\n");
    sb.append("    nutrients: ").append(toIndentedString(nutrients)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
    sb.append("    flavonoids: ").append(toIndentedString(flavonoids)).append("\n");
    sb.append("    ingredientBreakdown: ").append(toIndentedString(ingredientBreakdown)).append("\n");
    sb.append("    caloricBreakdown: ").append(toIndentedString(caloricBreakdown)).append("\n");
    sb.append("    weightPerServing: ").append(toIndentedString(weightPerServing)).append("\n");
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
    openapiFields.add("nutrients");
    openapiFields.add("properties");
    openapiFields.add("flavonoids");
    openapiFields.add("ingredient_breakdown");
    openapiFields.add("caloric_breakdown");
    openapiFields.add("weight_per_serving");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ComputeNutrition200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ComputeNutrition200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ComputeNutrition200Response is not found in the empty JSON string", ComputeNutrition200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ComputeNutrition200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ComputeNutrition200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("nutrients") != null && !jsonObj.get("nutrients").isJsonNull()) {
        JsonArray jsonArraynutrients = jsonObj.getAsJsonArray("nutrients");
        if (jsonArraynutrients != null) {
          // ensure the json data is an array
          if (!jsonObj.get("nutrients").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `nutrients` to be an array in the JSON string but got `%s`", jsonObj.get("nutrients").toString()));
          }

          // validate the optional field `nutrients` (array)
          for (int i = 0; i < jsonArraynutrients.size(); i++) {
            RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.validateJsonElement(jsonArraynutrients.get(i));
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
            RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.validateJsonElement(jsonArrayproperties.get(i));
          };
        }
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
            SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.validateJsonElement(jsonArrayflavonoids.get(i));
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
            ComputeNutrition200ResponseIngredientBreakdownInner.validateJsonElement(jsonArrayingredientBreakdown.get(i));
          };
        }
      }
      // validate the optional field `caloric_breakdown`
      if (jsonObj.get("caloric_breakdown") != null && !jsonObj.get("caloric_breakdown").isJsonNull()) {
        RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.validateJsonElement(jsonObj.get("caloric_breakdown"));
      }
      // validate the optional field `weight_per_serving`
      if (jsonObj.get("weight_per_serving") != null && !jsonObj.get("weight_per_serving").isJsonNull()) {
        RetrieveRecipeInformation200ResponseNutritionWeightPerServing.validateJsonElement(jsonObj.get("weight_per_serving"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ComputeNutrition200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ComputeNutrition200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ComputeNutrition200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ComputeNutrition200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ComputeNutrition200Response>() {
           @Override
           public void write(JsonWriter out, ComputeNutrition200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ComputeNutrition200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ComputeNutrition200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ComputeNutrition200Response
  * @throws IOException if the JSON string is invalid with respect to ComputeNutrition200Response
  */
  public static ComputeNutrition200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ComputeNutrition200Response.class);
  }

 /**
  * Convert an instance of ComputeNutrition200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
