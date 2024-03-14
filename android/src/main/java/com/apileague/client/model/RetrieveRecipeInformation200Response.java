/**
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

import com.apileague.client.model.RetrieveRecipeInformation200ResponseCredits;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseDietaryProperties;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInner;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseNutrition;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseScores;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseTaste;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseTimes;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200Response {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("servings")
  private Integer servings = null;
  @SerializedName("images")
  private List<String> images = null;
  @SerializedName("dietary_properties")
  private RetrieveRecipeInformation200ResponseDietaryProperties dietaryProperties = null;
  @SerializedName("price_per_serving")
  private BigDecimal pricePerServing = null;
  @SerializedName("times")
  private RetrieveRecipeInformation200ResponseTimes times = null;
  @SerializedName("nutrition")
  private RetrieveRecipeInformation200ResponseNutrition nutrition = null;
  @SerializedName("taste")
  private RetrieveRecipeInformation200ResponseTaste taste = null;
  @SerializedName("cuisines")
  private List<String> cuisines = null;
  @SerializedName("meal_types")
  private List<String> mealTypes = null;
  @SerializedName("occasions")
  private List<String> occasions = null;
  @SerializedName("ingredients")
  private List<RetrieveRecipeInformation200ResponseIngredientsInner> ingredients = null;
  @SerializedName("instructions")
  private List<RetrieveRecipeInformation200ResponseInstructionsInner> instructions = null;
  @SerializedName("credits")
  private RetrieveRecipeInformation200ResponseCredits credits = null;
  @SerializedName("scores")
  private RetrieveRecipeInformation200ResponseScores scores = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getServings() {
    return servings;
  }
  public void setServings(Integer servings) {
    this.servings = servings;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getImages() {
    return images;
  }
  public void setImages(List<String> images) {
    this.images = images;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseDietaryProperties getDietaryProperties() {
    return dietaryProperties;
  }
  public void setDietaryProperties(RetrieveRecipeInformation200ResponseDietaryProperties dietaryProperties) {
    this.dietaryProperties = dietaryProperties;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getPricePerServing() {
    return pricePerServing;
  }
  public void setPricePerServing(BigDecimal pricePerServing) {
    this.pricePerServing = pricePerServing;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseTimes getTimes() {
    return times;
  }
  public void setTimes(RetrieveRecipeInformation200ResponseTimes times) {
    this.times = times;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseNutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(RetrieveRecipeInformation200ResponseNutrition nutrition) {
    this.nutrition = nutrition;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseTaste getTaste() {
    return taste;
  }
  public void setTaste(RetrieveRecipeInformation200ResponseTaste taste) {
    this.taste = taste;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getCuisines() {
    return cuisines;
  }
  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getMealTypes() {
    return mealTypes;
  }
  public void setMealTypes(List<String> mealTypes) {
    this.mealTypes = mealTypes;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getOccasions() {
    return occasions;
  }
  public void setOccasions(List<String> occasions) {
    this.occasions = occasions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<RetrieveRecipeInformation200ResponseIngredientsInner> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<RetrieveRecipeInformation200ResponseIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<RetrieveRecipeInformation200ResponseInstructionsInner> getInstructions() {
    return instructions;
  }
  public void setInstructions(List<RetrieveRecipeInformation200ResponseInstructionsInner> instructions) {
    this.instructions = instructions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseCredits getCredits() {
    return credits;
  }
  public void setCredits(RetrieveRecipeInformation200ResponseCredits credits) {
    this.credits = credits;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseScores getScores() {
    return scores;
  }
  public void setScores(RetrieveRecipeInformation200ResponseScores scores) {
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
    RetrieveRecipeInformation200Response retrieveRecipeInformation200Response = (RetrieveRecipeInformation200Response) o;
    return (this.id == null ? retrieveRecipeInformation200Response.id == null : this.id.equals(retrieveRecipeInformation200Response.id)) &&
        (this.title == null ? retrieveRecipeInformation200Response.title == null : this.title.equals(retrieveRecipeInformation200Response.title)) &&
        (this.servings == null ? retrieveRecipeInformation200Response.servings == null : this.servings.equals(retrieveRecipeInformation200Response.servings)) &&
        (this.images == null ? retrieveRecipeInformation200Response.images == null : this.images.equals(retrieveRecipeInformation200Response.images)) &&
        (this.dietaryProperties == null ? retrieveRecipeInformation200Response.dietaryProperties == null : this.dietaryProperties.equals(retrieveRecipeInformation200Response.dietaryProperties)) &&
        (this.pricePerServing == null ? retrieveRecipeInformation200Response.pricePerServing == null : this.pricePerServing.equals(retrieveRecipeInformation200Response.pricePerServing)) &&
        (this.times == null ? retrieveRecipeInformation200Response.times == null : this.times.equals(retrieveRecipeInformation200Response.times)) &&
        (this.nutrition == null ? retrieveRecipeInformation200Response.nutrition == null : this.nutrition.equals(retrieveRecipeInformation200Response.nutrition)) &&
        (this.taste == null ? retrieveRecipeInformation200Response.taste == null : this.taste.equals(retrieveRecipeInformation200Response.taste)) &&
        (this.cuisines == null ? retrieveRecipeInformation200Response.cuisines == null : this.cuisines.equals(retrieveRecipeInformation200Response.cuisines)) &&
        (this.mealTypes == null ? retrieveRecipeInformation200Response.mealTypes == null : this.mealTypes.equals(retrieveRecipeInformation200Response.mealTypes)) &&
        (this.occasions == null ? retrieveRecipeInformation200Response.occasions == null : this.occasions.equals(retrieveRecipeInformation200Response.occasions)) &&
        (this.ingredients == null ? retrieveRecipeInformation200Response.ingredients == null : this.ingredients.equals(retrieveRecipeInformation200Response.ingredients)) &&
        (this.instructions == null ? retrieveRecipeInformation200Response.instructions == null : this.instructions.equals(retrieveRecipeInformation200Response.instructions)) &&
        (this.credits == null ? retrieveRecipeInformation200Response.credits == null : this.credits.equals(retrieveRecipeInformation200Response.credits)) &&
        (this.scores == null ? retrieveRecipeInformation200Response.scores == null : this.scores.equals(retrieveRecipeInformation200Response.scores));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.servings == null ? 0: this.servings.hashCode());
    result = 31 * result + (this.images == null ? 0: this.images.hashCode());
    result = 31 * result + (this.dietaryProperties == null ? 0: this.dietaryProperties.hashCode());
    result = 31 * result + (this.pricePerServing == null ? 0: this.pricePerServing.hashCode());
    result = 31 * result + (this.times == null ? 0: this.times.hashCode());
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.taste == null ? 0: this.taste.hashCode());
    result = 31 * result + (this.cuisines == null ? 0: this.cuisines.hashCode());
    result = 31 * result + (this.mealTypes == null ? 0: this.mealTypes.hashCode());
    result = 31 * result + (this.occasions == null ? 0: this.occasions.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.instructions == null ? 0: this.instructions.hashCode());
    result = 31 * result + (this.credits == null ? 0: this.credits.hashCode());
    result = 31 * result + (this.scores == null ? 0: this.scores.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200Response {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  servings: ").append(servings).append("\n");
    sb.append("  images: ").append(images).append("\n");
    sb.append("  dietaryProperties: ").append(dietaryProperties).append("\n");
    sb.append("  pricePerServing: ").append(pricePerServing).append("\n");
    sb.append("  times: ").append(times).append("\n");
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  taste: ").append(taste).append("\n");
    sb.append("  cuisines: ").append(cuisines).append("\n");
    sb.append("  mealTypes: ").append(mealTypes).append("\n");
    sb.append("  occasions: ").append(occasions).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("  credits: ").append(credits).append("\n");
    sb.append("  scores: ").append(scores).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
