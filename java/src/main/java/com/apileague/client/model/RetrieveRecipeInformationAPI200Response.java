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
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseCredits;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseDietaryProperties;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseIngredientsInner;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseInstructionsInner;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseNutrition;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseScores;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseTaste;
import com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseTimes;
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
 * RetrieveRecipeInformationAPI200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveRecipeInformationAPI200Response {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_SERVINGS = "servings";
  @SerializedName(SERIALIZED_NAME_SERVINGS)
  private Integer servings;

  public static final String SERIALIZED_NAME_IMAGES = "images";
  @SerializedName(SERIALIZED_NAME_IMAGES)
  private List<String> images = new ArrayList<>();

  public static final String SERIALIZED_NAME_DIETARY_PROPERTIES = "dietary_properties";
  @SerializedName(SERIALIZED_NAME_DIETARY_PROPERTIES)
  private RetrieveRecipeInformationAPI200ResponseDietaryProperties dietaryProperties;

  public static final String SERIALIZED_NAME_PRICE_PER_SERVING = "price_per_serving";
  @SerializedName(SERIALIZED_NAME_PRICE_PER_SERVING)
  private BigDecimal pricePerServing;

  public static final String SERIALIZED_NAME_TIMES = "times";
  @SerializedName(SERIALIZED_NAME_TIMES)
  private RetrieveRecipeInformationAPI200ResponseTimes times;

  public static final String SERIALIZED_NAME_NUTRITION = "nutrition";
  @SerializedName(SERIALIZED_NAME_NUTRITION)
  private RetrieveRecipeInformationAPI200ResponseNutrition nutrition;

  public static final String SERIALIZED_NAME_TASTE = "taste";
  @SerializedName(SERIALIZED_NAME_TASTE)
  private RetrieveRecipeInformationAPI200ResponseTaste taste;

  public static final String SERIALIZED_NAME_CUISINES = "cuisines";
  @SerializedName(SERIALIZED_NAME_CUISINES)
  private List<String> cuisines = new ArrayList<>();

  public static final String SERIALIZED_NAME_MEAL_TYPES = "meal_types";
  @SerializedName(SERIALIZED_NAME_MEAL_TYPES)
  private List<String> mealTypes = new ArrayList<>();

  public static final String SERIALIZED_NAME_OCCASIONS = "occasions";
  @SerializedName(SERIALIZED_NAME_OCCASIONS)
  private List<String> occasions = new ArrayList<>();

  public static final String SERIALIZED_NAME_INGREDIENTS = "ingredients";
  @SerializedName(SERIALIZED_NAME_INGREDIENTS)
  private List<RetrieveRecipeInformationAPI200ResponseIngredientsInner> ingredients = new ArrayList<>();

  public static final String SERIALIZED_NAME_INSTRUCTIONS = "instructions";
  @SerializedName(SERIALIZED_NAME_INSTRUCTIONS)
  private List<RetrieveRecipeInformationAPI200ResponseInstructionsInner> instructions = new ArrayList<>();

  public static final String SERIALIZED_NAME_CREDITS = "credits";
  @SerializedName(SERIALIZED_NAME_CREDITS)
  private RetrieveRecipeInformationAPI200ResponseCredits credits;

  public static final String SERIALIZED_NAME_SCORES = "scores";
  @SerializedName(SERIALIZED_NAME_SCORES)
  private RetrieveRecipeInformationAPI200ResponseScores scores;

  public RetrieveRecipeInformationAPI200Response() {
  }

  public RetrieveRecipeInformationAPI200Response id(Integer id) {
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


  public RetrieveRecipeInformationAPI200Response title(String title) {
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


  public RetrieveRecipeInformationAPI200Response servings(Integer servings) {
    this.servings = servings;
    return this;
  }

  /**
   * Get servings
   * @return servings
   */
  @javax.annotation.Nullable
  public Integer getServings() {
    return servings;
  }

  public void setServings(Integer servings) {
    this.servings = servings;
  }


  public RetrieveRecipeInformationAPI200Response images(List<String> images) {
    this.images = images;
    return this;
  }

  public RetrieveRecipeInformationAPI200Response addImagesItem(String imagesItem) {
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


  public RetrieveRecipeInformationAPI200Response dietaryProperties(RetrieveRecipeInformationAPI200ResponseDietaryProperties dietaryProperties) {
    this.dietaryProperties = dietaryProperties;
    return this;
  }

  /**
   * Get dietaryProperties
   * @return dietaryProperties
   */
  @javax.annotation.Nullable
  public RetrieveRecipeInformationAPI200ResponseDietaryProperties getDietaryProperties() {
    return dietaryProperties;
  }

  public void setDietaryProperties(RetrieveRecipeInformationAPI200ResponseDietaryProperties dietaryProperties) {
    this.dietaryProperties = dietaryProperties;
  }


  public RetrieveRecipeInformationAPI200Response pricePerServing(BigDecimal pricePerServing) {
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


  public RetrieveRecipeInformationAPI200Response times(RetrieveRecipeInformationAPI200ResponseTimes times) {
    this.times = times;
    return this;
  }

  /**
   * Get times
   * @return times
   */
  @javax.annotation.Nullable
  public RetrieveRecipeInformationAPI200ResponseTimes getTimes() {
    return times;
  }

  public void setTimes(RetrieveRecipeInformationAPI200ResponseTimes times) {
    this.times = times;
  }


  public RetrieveRecipeInformationAPI200Response nutrition(RetrieveRecipeInformationAPI200ResponseNutrition nutrition) {
    this.nutrition = nutrition;
    return this;
  }

  /**
   * Get nutrition
   * @return nutrition
   */
  @javax.annotation.Nullable
  public RetrieveRecipeInformationAPI200ResponseNutrition getNutrition() {
    return nutrition;
  }

  public void setNutrition(RetrieveRecipeInformationAPI200ResponseNutrition nutrition) {
    this.nutrition = nutrition;
  }


  public RetrieveRecipeInformationAPI200Response taste(RetrieveRecipeInformationAPI200ResponseTaste taste) {
    this.taste = taste;
    return this;
  }

  /**
   * Get taste
   * @return taste
   */
  @javax.annotation.Nullable
  public RetrieveRecipeInformationAPI200ResponseTaste getTaste() {
    return taste;
  }

  public void setTaste(RetrieveRecipeInformationAPI200ResponseTaste taste) {
    this.taste = taste;
  }


  public RetrieveRecipeInformationAPI200Response cuisines(List<String> cuisines) {
    this.cuisines = cuisines;
    return this;
  }

  public RetrieveRecipeInformationAPI200Response addCuisinesItem(String cuisinesItem) {
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


  public RetrieveRecipeInformationAPI200Response mealTypes(List<String> mealTypes) {
    this.mealTypes = mealTypes;
    return this;
  }

  public RetrieveRecipeInformationAPI200Response addMealTypesItem(String mealTypesItem) {
    if (this.mealTypes == null) {
      this.mealTypes = new ArrayList<>();
    }
    this.mealTypes.add(mealTypesItem);
    return this;
  }

  /**
   * Get mealTypes
   * @return mealTypes
   */
  @javax.annotation.Nullable
  public List<String> getMealTypes() {
    return mealTypes;
  }

  public void setMealTypes(List<String> mealTypes) {
    this.mealTypes = mealTypes;
  }


  public RetrieveRecipeInformationAPI200Response occasions(List<String> occasions) {
    this.occasions = occasions;
    return this;
  }

  public RetrieveRecipeInformationAPI200Response addOccasionsItem(String occasionsItem) {
    if (this.occasions == null) {
      this.occasions = new ArrayList<>();
    }
    this.occasions.add(occasionsItem);
    return this;
  }

  /**
   * Get occasions
   * @return occasions
   */
  @javax.annotation.Nullable
  public List<String> getOccasions() {
    return occasions;
  }

  public void setOccasions(List<String> occasions) {
    this.occasions = occasions;
  }


  public RetrieveRecipeInformationAPI200Response ingredients(List<RetrieveRecipeInformationAPI200ResponseIngredientsInner> ingredients) {
    this.ingredients = ingredients;
    return this;
  }

  public RetrieveRecipeInformationAPI200Response addIngredientsItem(RetrieveRecipeInformationAPI200ResponseIngredientsInner ingredientsItem) {
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
  public List<RetrieveRecipeInformationAPI200ResponseIngredientsInner> getIngredients() {
    return ingredients;
  }

  public void setIngredients(List<RetrieveRecipeInformationAPI200ResponseIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }


  public RetrieveRecipeInformationAPI200Response instructions(List<RetrieveRecipeInformationAPI200ResponseInstructionsInner> instructions) {
    this.instructions = instructions;
    return this;
  }

  public RetrieveRecipeInformationAPI200Response addInstructionsItem(RetrieveRecipeInformationAPI200ResponseInstructionsInner instructionsItem) {
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
  public List<RetrieveRecipeInformationAPI200ResponseInstructionsInner> getInstructions() {
    return instructions;
  }

  public void setInstructions(List<RetrieveRecipeInformationAPI200ResponseInstructionsInner> instructions) {
    this.instructions = instructions;
  }


  public RetrieveRecipeInformationAPI200Response credits(RetrieveRecipeInformationAPI200ResponseCredits credits) {
    this.credits = credits;
    return this;
  }

  /**
   * Get credits
   * @return credits
   */
  @javax.annotation.Nullable
  public RetrieveRecipeInformationAPI200ResponseCredits getCredits() {
    return credits;
  }

  public void setCredits(RetrieveRecipeInformationAPI200ResponseCredits credits) {
    this.credits = credits;
  }


  public RetrieveRecipeInformationAPI200Response scores(RetrieveRecipeInformationAPI200ResponseScores scores) {
    this.scores = scores;
    return this;
  }

  /**
   * Get scores
   * @return scores
   */
  @javax.annotation.Nullable
  public RetrieveRecipeInformationAPI200ResponseScores getScores() {
    return scores;
  }

  public void setScores(RetrieveRecipeInformationAPI200ResponseScores scores) {
    this.scores = scores;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformationAPI200Response retrieveRecipeInformationAPI200Response = (RetrieveRecipeInformationAPI200Response) o;
    return Objects.equals(this.id, retrieveRecipeInformationAPI200Response.id) &&
        Objects.equals(this.title, retrieveRecipeInformationAPI200Response.title) &&
        Objects.equals(this.servings, retrieveRecipeInformationAPI200Response.servings) &&
        Objects.equals(this.images, retrieveRecipeInformationAPI200Response.images) &&
        Objects.equals(this.dietaryProperties, retrieveRecipeInformationAPI200Response.dietaryProperties) &&
        Objects.equals(this.pricePerServing, retrieveRecipeInformationAPI200Response.pricePerServing) &&
        Objects.equals(this.times, retrieveRecipeInformationAPI200Response.times) &&
        Objects.equals(this.nutrition, retrieveRecipeInformationAPI200Response.nutrition) &&
        Objects.equals(this.taste, retrieveRecipeInformationAPI200Response.taste) &&
        Objects.equals(this.cuisines, retrieveRecipeInformationAPI200Response.cuisines) &&
        Objects.equals(this.mealTypes, retrieveRecipeInformationAPI200Response.mealTypes) &&
        Objects.equals(this.occasions, retrieveRecipeInformationAPI200Response.occasions) &&
        Objects.equals(this.ingredients, retrieveRecipeInformationAPI200Response.ingredients) &&
        Objects.equals(this.instructions, retrieveRecipeInformationAPI200Response.instructions) &&
        Objects.equals(this.credits, retrieveRecipeInformationAPI200Response.credits) &&
        Objects.equals(this.scores, retrieveRecipeInformationAPI200Response.scores);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, title, servings, images, dietaryProperties, pricePerServing, times, nutrition, taste, cuisines, mealTypes, occasions, ingredients, instructions, credits, scores);
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
    sb.append("class RetrieveRecipeInformationAPI200Response {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    servings: ").append(toIndentedString(servings)).append("\n");
    sb.append("    images: ").append(toIndentedString(images)).append("\n");
    sb.append("    dietaryProperties: ").append(toIndentedString(dietaryProperties)).append("\n");
    sb.append("    pricePerServing: ").append(toIndentedString(pricePerServing)).append("\n");
    sb.append("    times: ").append(toIndentedString(times)).append("\n");
    sb.append("    nutrition: ").append(toIndentedString(nutrition)).append("\n");
    sb.append("    taste: ").append(toIndentedString(taste)).append("\n");
    sb.append("    cuisines: ").append(toIndentedString(cuisines)).append("\n");
    sb.append("    mealTypes: ").append(toIndentedString(mealTypes)).append("\n");
    sb.append("    occasions: ").append(toIndentedString(occasions)).append("\n");
    sb.append("    ingredients: ").append(toIndentedString(ingredients)).append("\n");
    sb.append("    instructions: ").append(toIndentedString(instructions)).append("\n");
    sb.append("    credits: ").append(toIndentedString(credits)).append("\n");
    sb.append("    scores: ").append(toIndentedString(scores)).append("\n");
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
    openapiFields.add("id");
    openapiFields.add("title");
    openapiFields.add("servings");
    openapiFields.add("images");
    openapiFields.add("dietary_properties");
    openapiFields.add("price_per_serving");
    openapiFields.add("times");
    openapiFields.add("nutrition");
    openapiFields.add("taste");
    openapiFields.add("cuisines");
    openapiFields.add("meal_types");
    openapiFields.add("occasions");
    openapiFields.add("ingredients");
    openapiFields.add("instructions");
    openapiFields.add("credits");
    openapiFields.add("scores");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformationAPI200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformationAPI200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformationAPI200Response is not found in the empty JSON string", RetrieveRecipeInformationAPI200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformationAPI200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformationAPI200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("images") != null && !jsonObj.get("images").isJsonNull() && !jsonObj.get("images").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `images` to be an array in the JSON string but got `%s`", jsonObj.get("images").toString()));
      }
      // validate the optional field `dietary_properties`
      if (jsonObj.get("dietary_properties") != null && !jsonObj.get("dietary_properties").isJsonNull()) {
        RetrieveRecipeInformationAPI200ResponseDietaryProperties.validateJsonElement(jsonObj.get("dietary_properties"));
      }
      // validate the optional field `times`
      if (jsonObj.get("times") != null && !jsonObj.get("times").isJsonNull()) {
        RetrieveRecipeInformationAPI200ResponseTimes.validateJsonElement(jsonObj.get("times"));
      }
      // validate the optional field `nutrition`
      if (jsonObj.get("nutrition") != null && !jsonObj.get("nutrition").isJsonNull()) {
        RetrieveRecipeInformationAPI200ResponseNutrition.validateJsonElement(jsonObj.get("nutrition"));
      }
      // validate the optional field `taste`
      if (jsonObj.get("taste") != null && !jsonObj.get("taste").isJsonNull()) {
        RetrieveRecipeInformationAPI200ResponseTaste.validateJsonElement(jsonObj.get("taste"));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("cuisines") != null && !jsonObj.get("cuisines").isJsonNull() && !jsonObj.get("cuisines").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `cuisines` to be an array in the JSON string but got `%s`", jsonObj.get("cuisines").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("meal_types") != null && !jsonObj.get("meal_types").isJsonNull() && !jsonObj.get("meal_types").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `meal_types` to be an array in the JSON string but got `%s`", jsonObj.get("meal_types").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("occasions") != null && !jsonObj.get("occasions").isJsonNull() && !jsonObj.get("occasions").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `occasions` to be an array in the JSON string but got `%s`", jsonObj.get("occasions").toString()));
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
            RetrieveRecipeInformationAPI200ResponseIngredientsInner.validateJsonElement(jsonArrayingredients.get(i));
          };
        }
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
            RetrieveRecipeInformationAPI200ResponseInstructionsInner.validateJsonElement(jsonArrayinstructions.get(i));
          };
        }
      }
      // validate the optional field `credits`
      if (jsonObj.get("credits") != null && !jsonObj.get("credits").isJsonNull()) {
        RetrieveRecipeInformationAPI200ResponseCredits.validateJsonElement(jsonObj.get("credits"));
      }
      // validate the optional field `scores`
      if (jsonObj.get("scores") != null && !jsonObj.get("scores").isJsonNull()) {
        RetrieveRecipeInformationAPI200ResponseScores.validateJsonElement(jsonObj.get("scores"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformationAPI200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformationAPI200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformationAPI200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformationAPI200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformationAPI200Response>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformationAPI200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformationAPI200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveRecipeInformationAPI200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveRecipeInformationAPI200Response
   * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformationAPI200Response
   */
  public static RetrieveRecipeInformationAPI200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformationAPI200Response.class);
  }

  /**
   * Convert an instance of RetrieveRecipeInformationAPI200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

