/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import com.apileague.client.model.SearchDrinks200ResponseDrinksInner;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SearchDrinks200Response {
  
  @SerializedName("offset")
  private Integer offset = null;
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("drinks")
  private List<SearchDrinks200ResponseDrinksInner> drinks = null;
  @SerializedName("total_results")
  private Integer totalResults = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getOffset() {
    return offset;
  }
  public void setOffset(Integer offset) {
    this.offset = offset;
  }

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
  public List<SearchDrinks200ResponseDrinksInner> getDrinks() {
    return drinks;
  }
  public void setDrinks(List<SearchDrinks200ResponseDrinksInner> drinks) {
    this.drinks = drinks;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTotalResults() {
    return totalResults;
  }
  public void setTotalResults(Integer totalResults) {
    this.totalResults = totalResults;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinks200Response searchDrinks200Response = (SearchDrinks200Response) o;
    return (this.offset == null ? searchDrinks200Response.offset == null : this.offset.equals(searchDrinks200Response.offset)) &&
        (this.number == null ? searchDrinks200Response.number == null : this.number.equals(searchDrinks200Response.number)) &&
        (this.drinks == null ? searchDrinks200Response.drinks == null : this.drinks.equals(searchDrinks200Response.drinks)) &&
        (this.totalResults == null ? searchDrinks200Response.totalResults == null : this.totalResults.equals(searchDrinks200Response.totalResults));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.offset == null ? 0: this.offset.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.drinks == null ? 0: this.drinks.hashCode());
    result = 31 * result + (this.totalResults == null ? 0: this.totalResults.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinks200Response {\n");
    
    sb.append("  offset: ").append(offset).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("  drinks: ").append(drinks).append("\n");
    sb.append("  totalResults: ").append(totalResults).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
