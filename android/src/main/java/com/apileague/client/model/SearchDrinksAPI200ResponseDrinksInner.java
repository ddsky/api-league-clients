/**
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

import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerCredits;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInner;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInner;
import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutrition;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinksAPI200ResponseDrinksInner {
  
  @SerializedName("flavors")
  private List<String> flavors = null;
  @SerializedName("instructions")
  private List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInner> instructions = null;
  @SerializedName("images")
  private List<String> images = null;
  @SerializedName("nutrition")
  private SearchDrinksAPI200ResponseDrinksInnerNutrition nutrition = null;
  @SerializedName("glass_type")
  private String glassType = null;
  @SerializedName("credits")
  private SearchDrinksAPI200ResponseDrinksInnerCredits credits = null;
  @SerializedName("price_per_serving")
  private BigDecimal pricePerServing = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("ingredients")
  private List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner> ingredients = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("cuisines")
  private List<String> cuisines = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getFlavors() {
    return flavors;
  }
  public void setFlavors(List<String> flavors) {
    this.flavors = flavors;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInner> getInstructions() {
    return instructions;
  }
  public void setInstructions(List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInner> instructions) {
    this.instructions = instructions;
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
  public SearchDrinksAPI200ResponseDrinksInnerNutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(SearchDrinksAPI200ResponseDrinksInnerNutrition nutrition) {
    this.nutrition = nutrition;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getGlassType() {
    return glassType;
  }
  public void setGlassType(String glassType) {
    this.glassType = glassType;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public SearchDrinksAPI200ResponseDrinksInnerCredits getCredits() {
    return credits;
  }
  public void setCredits(SearchDrinksAPI200ResponseDrinksInnerCredits credits) {
    this.credits = credits;
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
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<SearchDrinksAPI200ResponseDrinksInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }

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
    SearchDrinksAPI200ResponseDrinksInner searchDrinksAPI200ResponseDrinksInner = (SearchDrinksAPI200ResponseDrinksInner) o;
    return (this.flavors == null ? searchDrinksAPI200ResponseDrinksInner.flavors == null : this.flavors.equals(searchDrinksAPI200ResponseDrinksInner.flavors)) &&
        (this.instructions == null ? searchDrinksAPI200ResponseDrinksInner.instructions == null : this.instructions.equals(searchDrinksAPI200ResponseDrinksInner.instructions)) &&
        (this.images == null ? searchDrinksAPI200ResponseDrinksInner.images == null : this.images.equals(searchDrinksAPI200ResponseDrinksInner.images)) &&
        (this.nutrition == null ? searchDrinksAPI200ResponseDrinksInner.nutrition == null : this.nutrition.equals(searchDrinksAPI200ResponseDrinksInner.nutrition)) &&
        (this.glassType == null ? searchDrinksAPI200ResponseDrinksInner.glassType == null : this.glassType.equals(searchDrinksAPI200ResponseDrinksInner.glassType)) &&
        (this.credits == null ? searchDrinksAPI200ResponseDrinksInner.credits == null : this.credits.equals(searchDrinksAPI200ResponseDrinksInner.credits)) &&
        (this.pricePerServing == null ? searchDrinksAPI200ResponseDrinksInner.pricePerServing == null : this.pricePerServing.equals(searchDrinksAPI200ResponseDrinksInner.pricePerServing)) &&
        (this.description == null ? searchDrinksAPI200ResponseDrinksInner.description == null : this.description.equals(searchDrinksAPI200ResponseDrinksInner.description)) &&
        (this.ingredients == null ? searchDrinksAPI200ResponseDrinksInner.ingredients == null : this.ingredients.equals(searchDrinksAPI200ResponseDrinksInner.ingredients)) &&
        (this.id == null ? searchDrinksAPI200ResponseDrinksInner.id == null : this.id.equals(searchDrinksAPI200ResponseDrinksInner.id)) &&
        (this.title == null ? searchDrinksAPI200ResponseDrinksInner.title == null : this.title.equals(searchDrinksAPI200ResponseDrinksInner.title)) &&
        (this.cuisines == null ? searchDrinksAPI200ResponseDrinksInner.cuisines == null : this.cuisines.equals(searchDrinksAPI200ResponseDrinksInner.cuisines));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.flavors == null ? 0: this.flavors.hashCode());
    result = 31 * result + (this.instructions == null ? 0: this.instructions.hashCode());
    result = 31 * result + (this.images == null ? 0: this.images.hashCode());
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.glassType == null ? 0: this.glassType.hashCode());
    result = 31 * result + (this.credits == null ? 0: this.credits.hashCode());
    result = 31 * result + (this.pricePerServing == null ? 0: this.pricePerServing.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.cuisines == null ? 0: this.cuisines.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinksAPI200ResponseDrinksInner {\n");
    
    sb.append("  flavors: ").append(flavors).append("\n");
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("  images: ").append(images).append("\n");
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  glassType: ").append(glassType).append("\n");
    sb.append("  credits: ").append(credits).append("\n");
    sb.append("  pricePerServing: ").append(pricePerServing).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  cuisines: ").append(cuisines).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}