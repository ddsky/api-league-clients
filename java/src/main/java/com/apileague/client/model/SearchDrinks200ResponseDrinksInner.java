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
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerCredits;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerIngredientsInner;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerInstructionsInner;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutrition;
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
 * SearchDrinks200ResponseDrinksInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchDrinks200ResponseDrinksInner {
  public static final String SERIALIZED_NAME_FLAVORS = "flavors";
  @SerializedName(SERIALIZED_NAME_FLAVORS)
  private List<String> flavors = new ArrayList<>();

  public static final String SERIALIZED_NAME_INSTRUCTIONS = "instructions";
  @SerializedName(SERIALIZED_NAME_INSTRUCTIONS)
  private List<SearchDrinks200ResponseDrinksInnerInstructionsInner> instructions = new ArrayList<>();

  public static final String SERIALIZED_NAME_IMAGES = "images";
  @SerializedName(SERIALIZED_NAME_IMAGES)
  private List<String> images = new ArrayList<>();

  public static final String SERIALIZED_NAME_NUTRITION = "nutrition";
  @SerializedName(SERIALIZED_NAME_NUTRITION)
  private SearchDrinks200ResponseDrinksInnerNutrition nutrition;

  public static final String SERIALIZED_NAME_GLASS_TYPE = "glass_type";
  @SerializedName(SERIALIZED_NAME_GLASS_TYPE)
  private String glassType;

  public static final String SERIALIZED_NAME_CREDITS = "credits";
  @SerializedName(SERIALIZED_NAME_CREDITS)
  private SearchDrinks200ResponseDrinksInnerCredits credits;

  public static final String SERIALIZED_NAME_PRICE_PER_SERVING = "price_per_serving";
  @SerializedName(SERIALIZED_NAME_PRICE_PER_SERVING)
  private BigDecimal pricePerServing;

  public static final String SERIALIZED_NAME_DESCRIPTION = "description";
  @SerializedName(SERIALIZED_NAME_DESCRIPTION)
  private String description;

  public static final String SERIALIZED_NAME_INGREDIENTS = "ingredients";
  @SerializedName(SERIALIZED_NAME_INGREDIENTS)
  private List<SearchDrinks200ResponseDrinksInnerIngredientsInner> ingredients = new ArrayList<>();

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_CUISINES = "cuisines";
  @SerializedName(SERIALIZED_NAME_CUISINES)
  private List<String> cuisines = new ArrayList<>();

  public SearchDrinks200ResponseDrinksInner() {
  }

  public SearchDrinks200ResponseDrinksInner flavors(List<String> flavors) {
    this.flavors = flavors;
    return this;
  }

  public SearchDrinks200ResponseDrinksInner addFlavorsItem(String flavorsItem) {
    if (this.flavors == null) {
      this.flavors = new ArrayList<>();
    }
    this.flavors.add(flavorsItem);
    return this;
  }

  /**
   * Get flavors
   * @return flavors
   */
  @javax.annotation.Nullable
  public List<String> getFlavors() {
    return flavors;
  }

  public void setFlavors(List<String> flavors) {
    this.flavors = flavors;
  }


  public SearchDrinks200ResponseDrinksInner instructions(List<SearchDrinks200ResponseDrinksInnerInstructionsInner> instructions) {
    this.instructions = instructions;
    return this;
  }

  public SearchDrinks200ResponseDrinksInner addInstructionsItem(SearchDrinks200ResponseDrinksInnerInstructionsInner instructionsItem) {
    if (this.instructions == null) {
      this.instructions = new ArrayList<>();
    }
    this.instructions.add(instructionsItem);
    return this;
  }

  /**
   * Get instructions
   * @return instructions
   */
  @javax.annotation.Nullable
  public List<SearchDrinks200ResponseDrinksInnerInstructionsInner> getInstructions() {
    return instructions;
  }

  public void setInstructions(List<SearchDrinks200ResponseDrinksInnerInstructionsInner> instructions) {
    this.instructions = instructions;
  }


  public SearchDrinks200ResponseDrinksInner images(List<String> images) {
    this.images = images;
    return this;
  }

  public SearchDrinks200ResponseDrinksInner addImagesItem(String imagesItem) {
    if (this.images == null) {
      this.images = new ArrayList<>();
    }
    this.images.add(imagesItem);
    return this;
  }

  /**
   * Get images
   * @return images
   */
  @javax.annotation.Nullable
  public List<String> getImages() {
    return images;
  }

  public void setImages(List<String> images) {
    this.images = images;
  }


  public SearchDrinks200ResponseDrinksInner nutrition(SearchDrinks200ResponseDrinksInnerNutrition nutrition) {
    this.nutrition = nutrition;
    return this;
  }

  /**
   * Get nutrition
   * @return nutrition
   */
  @javax.annotation.Nullable
  public SearchDrinks200ResponseDrinksInnerNutrition getNutrition() {
    return nutrition;
  }

  public void setNutrition(SearchDrinks200ResponseDrinksInnerNutrition nutrition) {
    this.nutrition = nutrition;
  }


  public SearchDrinks200ResponseDrinksInner glassType(String glassType) {
    this.glassType = glassType;
    return this;
  }

  /**
   * Get glassType
   * @return glassType
   */
  @javax.annotation.Nullable
  public String getGlassType() {
    return glassType;
  }

  public void setGlassType(String glassType) {
    this.glassType = glassType;
  }


  public SearchDrinks200ResponseDrinksInner credits(SearchDrinks200ResponseDrinksInnerCredits credits) {
    this.credits = credits;
    return this;
  }

  /**
   * Get credits
   * @return credits
   */
  @javax.annotation.Nullable
  public SearchDrinks200ResponseDrinksInnerCredits getCredits() {
    return credits;
  }

  public void setCredits(SearchDrinks200ResponseDrinksInnerCredits credits) {
    this.credits = credits;
  }


  public SearchDrinks200ResponseDrinksInner pricePerServing(BigDecimal pricePerServing) {
    this.pricePerServing = pricePerServing;
    return this;
  }

  /**
   * Get pricePerServing
   * @return pricePerServing
   */
  @javax.annotation.Nullable
  public BigDecimal getPricePerServing() {
    return pricePerServing;
  }

  public void setPricePerServing(BigDecimal pricePerServing) {
    this.pricePerServing = pricePerServing;
  }


  public SearchDrinks200ResponseDrinksInner description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  @javax.annotation.Nullable
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public SearchDrinks200ResponseDrinksInner ingredients(List<SearchDrinks200ResponseDrinksInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
    return this;
  }

  public SearchDrinks200ResponseDrinksInner addIngredientsItem(SearchDrinks200ResponseDrinksInnerIngredientsInner ingredientsItem) {
    if (this.ingredients == null) {
      this.ingredients = new ArrayList<>();
    }
    this.ingredients.add(ingredientsItem);
    return this;
  }

  /**
   * Get ingredients
   * @return ingredients
   */
  @javax.annotation.Nullable
  public List<SearchDrinks200ResponseDrinksInnerIngredientsInner> getIngredients() {
    return ingredients;
  }

  public void setIngredients(List<SearchDrinks200ResponseDrinksInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }


  public SearchDrinks200ResponseDrinksInner id(Integer id) {
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


  public SearchDrinks200ResponseDrinksInner title(String title) {
    this.title = title;
    return this;
  }

  /**
   * Get title
   * @return title
   */
  @javax.annotation.Nullable
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public SearchDrinks200ResponseDrinksInner cuisines(List<String> cuisines) {
    this.cuisines = cuisines;
    return this;
  }

  public SearchDrinks200ResponseDrinksInner addCuisinesItem(String cuisinesItem) {
    if (this.cuisines == null) {
      this.cuisines = new ArrayList<>();
    }
    this.cuisines.add(cuisinesItem);
    return this;
  }

  /**
   * Get cuisines
   * @return cuisines
   */
  @javax.annotation.Nullable
  public List<String> getCuisines() {
    return cuisines;
  }

  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinks200ResponseDrinksInner searchDrinks200ResponseDrinksInner = (SearchDrinks200ResponseDrinksInner) o;
    return Objects.equals(this.flavors, searchDrinks200ResponseDrinksInner.flavors) &&
        Objects.equals(this.instructions, searchDrinks200ResponseDrinksInner.instructions) &&
        Objects.equals(this.images, searchDrinks200ResponseDrinksInner.images) &&
        Objects.equals(this.nutrition, searchDrinks200ResponseDrinksInner.nutrition) &&
        Objects.equals(this.glassType, searchDrinks200ResponseDrinksInner.glassType) &&
        Objects.equals(this.credits, searchDrinks200ResponseDrinksInner.credits) &&
        Objects.equals(this.pricePerServing, searchDrinks200ResponseDrinksInner.pricePerServing) &&
        Objects.equals(this.description, searchDrinks200ResponseDrinksInner.description) &&
        Objects.equals(this.ingredients, searchDrinks200ResponseDrinksInner.ingredients) &&
        Objects.equals(this.id, searchDrinks200ResponseDrinksInner.id) &&
        Objects.equals(this.title, searchDrinks200ResponseDrinksInner.title) &&
        Objects.equals(this.cuisines, searchDrinks200ResponseDrinksInner.cuisines);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(flavors, instructions, images, nutrition, glassType, credits, pricePerServing, description, ingredients, id, title, cuisines);
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
    sb.append("class SearchDrinks200ResponseDrinksInner {\n");
    sb.append("    flavors: ").append(toIndentedString(flavors)).append("\n");
    sb.append("    instructions: ").append(toIndentedString(instructions)).append("\n");
    sb.append("    images: ").append(toIndentedString(images)).append("\n");
    sb.append("    nutrition: ").append(toIndentedString(nutrition)).append("\n");
    sb.append("    glassType: ").append(toIndentedString(glassType)).append("\n");
    sb.append("    credits: ").append(toIndentedString(credits)).append("\n");
    sb.append("    pricePerServing: ").append(toIndentedString(pricePerServing)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    ingredients: ").append(toIndentedString(ingredients)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    cuisines: ").append(toIndentedString(cuisines)).append("\n");
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
    openapiFields.add("flavors");
    openapiFields.add("instructions");
    openapiFields.add("images");
    openapiFields.add("nutrition");
    openapiFields.add("glass_type");
    openapiFields.add("credits");
    openapiFields.add("price_per_serving");
    openapiFields.add("description");
    openapiFields.add("ingredients");
    openapiFields.add("id");
    openapiFields.add("title");
    openapiFields.add("cuisines");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchDrinks200ResponseDrinksInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchDrinks200ResponseDrinksInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchDrinks200ResponseDrinksInner is not found in the empty JSON string", SearchDrinks200ResponseDrinksInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchDrinks200ResponseDrinksInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchDrinks200ResponseDrinksInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the optional json data is an array if present
      if (jsonObj.get("flavors") != null && !jsonObj.get("flavors").isJsonNull() && !jsonObj.get("flavors").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `flavors` to be an array in the JSON string but got `%s`", jsonObj.get("flavors").toString()));
      }
      if (jsonObj.get("instructions") != null && !jsonObj.get("instructions").isJsonNull()) {
        JsonArray jsonArrayinstructions = jsonObj.getAsJsonArray("instructions");
        if (jsonArrayinstructions != null) {
          // ensure the json data is an array
          if (!jsonObj.get("instructions").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `instructions` to be an array in the JSON string but got `%s`", jsonObj.get("instructions").toString()));
          }

          // validate the optional field `instructions` (array)
          for (int i = 0; i < jsonArrayinstructions.size(); i++) {
            SearchDrinks200ResponseDrinksInnerInstructionsInner.validateJsonElement(jsonArrayinstructions.get(i));
          };
        }
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("images") != null && !jsonObj.get("images").isJsonNull() && !jsonObj.get("images").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `images` to be an array in the JSON string but got `%s`", jsonObj.get("images").toString()));
      }
      // validate the optional field `nutrition`
      if (jsonObj.get("nutrition") != null && !jsonObj.get("nutrition").isJsonNull()) {
        SearchDrinks200ResponseDrinksInnerNutrition.validateJsonElement(jsonObj.get("nutrition"));
      }
      if ((jsonObj.get("glass_type") != null && !jsonObj.get("glass_type").isJsonNull()) && !jsonObj.get("glass_type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `glass_type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("glass_type").toString()));
      }
      // validate the optional field `credits`
      if (jsonObj.get("credits") != null && !jsonObj.get("credits").isJsonNull()) {
        SearchDrinks200ResponseDrinksInnerCredits.validateJsonElement(jsonObj.get("credits"));
      }
      if ((jsonObj.get("description") != null && !jsonObj.get("description").isJsonNull()) && !jsonObj.get("description").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `description` to be a primitive type in the JSON string but got `%s`", jsonObj.get("description").toString()));
      }
      if (jsonObj.get("ingredients") != null && !jsonObj.get("ingredients").isJsonNull()) {
        JsonArray jsonArrayingredients = jsonObj.getAsJsonArray("ingredients");
        if (jsonArrayingredients != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ingredients").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ingredients` to be an array in the JSON string but got `%s`", jsonObj.get("ingredients").toString()));
          }

          // validate the optional field `ingredients` (array)
          for (int i = 0; i < jsonArrayingredients.size(); i++) {
            SearchDrinks200ResponseDrinksInnerIngredientsInner.validateJsonElement(jsonArrayingredients.get(i));
          };
        }
      }
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cuisines") != null && !jsonObj.get("cuisines").isJsonNull() && !jsonObj.get("cuisines").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cuisines` to be an array in the JSON string but got `%s`", jsonObj.get("cuisines").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchDrinks200ResponseDrinksInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchDrinks200ResponseDrinksInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchDrinks200ResponseDrinksInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchDrinks200ResponseDrinksInner.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchDrinks200ResponseDrinksInner>() {
           @Override
           public void write(JsonWriter out, SearchDrinks200ResponseDrinksInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchDrinks200ResponseDrinksInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchDrinks200ResponseDrinksInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchDrinks200ResponseDrinksInner
   * @throws IOException if the JSON string is invalid with respect to SearchDrinks200ResponseDrinksInner
   */
  public static SearchDrinks200ResponseDrinksInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchDrinks200ResponseDrinksInner.class);
  }

  /**
   * Convert an instance of SearchDrinks200ResponseDrinksInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

