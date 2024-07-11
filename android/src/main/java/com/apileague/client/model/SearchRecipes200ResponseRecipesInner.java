/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutrition;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchRecipes200ResponseRecipesInner {
  
  @SerializedName("images")
  private List<String> images = null;
  @SerializedName("nutrition")
  private SearchRecipes200ResponseRecipesInnerNutrition nutrition = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("title")
  private String title = null;

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
  public SearchRecipes200ResponseRecipesInnerNutrition getNutrition() {
    return nutrition;
  }
  public void setNutrition(SearchRecipes200ResponseRecipesInnerNutrition nutrition) {
    this.nutrition = nutrition;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRecipes200ResponseRecipesInner searchRecipes200ResponseRecipesInner = (SearchRecipes200ResponseRecipesInner) o;
    return (this.images == null ? searchRecipes200ResponseRecipesInner.images == null : this.images.equals(searchRecipes200ResponseRecipesInner.images)) &&
        (this.nutrition == null ? searchRecipes200ResponseRecipesInner.nutrition == null : this.nutrition.equals(searchRecipes200ResponseRecipesInner.nutrition)) &&
        (this.id == null ? searchRecipes200ResponseRecipesInner.id == null : this.id.equals(searchRecipes200ResponseRecipesInner.id)) &&
        (this.title == null ? searchRecipes200ResponseRecipesInner.title == null : this.title.equals(searchRecipes200ResponseRecipesInner.title));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.images == null ? 0: this.images.hashCode());
    result = 31 * result + (this.nutrition == null ? 0: this.nutrition.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRecipes200ResponseRecipesInner {\n");
    
    sb.append("  images: ").append(images).append("\n");
    sb.append("  nutrition: ").append(nutrition).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
