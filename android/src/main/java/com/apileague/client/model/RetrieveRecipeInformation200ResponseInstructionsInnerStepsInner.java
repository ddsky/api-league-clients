/**
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

import com.apileague.client.model.SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
  
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("ingredients")
  private List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> ingredients = null;
  @SerializedName("equipment")
  private List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> equipment = null;
  @SerializedName("step")
  private String step = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> getEquipment() {
    return equipment;
  }
  public void setEquipment(List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> equipment) {
    this.equipment = equipment;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getStep() {
    return step;
  }
  public void setStep(String step) {
    this.step = step;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner retrieveRecipeInformation200ResponseInstructionsInnerStepsInner = (RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) o;
    return (this.number == null ? retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.number == null : this.number.equals(retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.number)) &&
        (this.ingredients == null ? retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.ingredients == null : this.ingredients.equals(retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.ingredients)) &&
        (this.equipment == null ? retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.equipment == null : this.equipment.equals(retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.equipment)) &&
        (this.step == null ? retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.step == null : this.step.equals(retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.step));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.equipment == null ? 0: this.equipment.hashCode());
    result = 31 * result + (this.step == null ? 0: this.step.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {\n");
    
    sb.append("  number: ").append(number).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("  step: ").append(step).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
