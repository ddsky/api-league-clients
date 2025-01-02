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

import com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner {
  
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("ingredients")
  private List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> ingredients = null;
  @SerializedName("equipment")
  private List<String> equipment = null;
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
  public List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getEquipment() {
    return equipment;
  }
  public void setEquipment(List<String> equipment) {
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
    SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner = (SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner) o;
    return (this.number == null ? searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.number == null : this.number.equals(searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.number)) &&
        (this.ingredients == null ? searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.ingredients == null : this.ingredients.equals(searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.ingredients)) &&
        (this.equipment == null ? searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.equipment == null : this.equipment.equals(searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.equipment)) &&
        (this.step == null ? searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.step == null : this.step.equals(searchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.step));
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
    sb.append("class SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner {\n");
    
    sb.append("  number: ").append(number).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  equipment: ").append(equipment).append("\n");
    sb.append("  step: ").append(step).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
